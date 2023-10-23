`timescale      1ns/1ps
// *********************************************************************************
// Project Name : 
// Email        : aobowang@stu.xidian.edu.cn
// Create Time  : 2019/01/07 21:11:10 
// File Name    : .v
// Module Name  : 
// Abstract     :
// editor		: sublime text 3
// *********************************************************************************
// Modification History:
// Date          By              Version                 Change Description
// -----------------------------------------------------------------------
// 2019/01/07    xieyangjie           1.0                     Original 此模块为被动接受模块 一直算着 有效数据根据valid来取  此处留坑，设计时只考虑INT16 没做INT8
// 2019/03/13    wangaobo             1.1                     增加输出接口
// 2019/03/14    wangaobo             1.2                     改变参数  现在阶段只考虑16bit的计算
// 2019/03/15    wangaobo             1.3                     改变原始的写入权值的weight_wr_en信号 每一列共享相同的权值 写入的时候一列同时写入
// 2019/03/25    wangaobo             1.4                     写入的数据在fmap的数据进来的时候 进过一定的延时才做完 此时要经过这个结构确定DSP_RESULT_DELAY的数值
// 2020/04/17                         1.5                     将阵列改为适应于690t的DSP器件，只使用A*B和A*B + PCIN两种模式
// *********************************************************************************


module DSP_ARRAY #(
	parameter 				DSP_ROW_NUM		= 32,  // DSP_ROW_NUM >= 2  //行  3行表示有三行 即竖着方向有三个
 	parameter 				DSP_COL_NUM		= 16,
	parameter 				DATA_WIDTH 		= 512,
	parameter 				WEIGHT_WIDTH 	= 512,
	parameter 				WORD_WIDTH 		= 16   //INT16 INT8
	)
	(

/////////////////////////////////////////////////////////////
	input								clk,  //DSP工作时钟
	input								rst,

	input[DSP_ROW_NUM-1:0]				fmap_valid,  //已经从150mhz同步到300mhz，并进行了各级延迟
	input[DATA_WIDTH-1:0]				fmap_data,

	input[2*DSP_COL_NUM-1:0]			weight_wr_en,  //ping、pong buffer个一个
	input[$clog2(512/WORD_WIDTH)-1:0]	weight_wr_addr,
	input[DSP_ROW_NUM*WORD_WIDTH-1:0]	weight_din,    //写的时候数据拆分

	input[$clog2(512/WORD_WIDTH)-1:0]	weight_rd_addr_base, //此处当16 为32位宽  当8时 为64位宽 与设计不符
	input[2:0]							kernel_size,

	output 					        	result_valid_out,
	output[DSP_COL_NUM*48-1:0]			result_out //拼成一个数据

    );

	//NOTE：根据卷积核kernel_size自动选择最后一级dsp model
	wire[47:0]			last_row_C[DSP_ROW_NUM-1:0][DSP_COL_NUM-1:0];

	wire[0:0]			dsp_model_sel[DSP_ROW_NUM-1:0];  

	wire[47:0]			C[DSP_ROW_NUM-1:0][DSP_COL_NUM-1:0];

	wire[47:0]			PCIN[DSP_ROW_NUM-1:0][DSP_COL_NUM-1:0];
	wire[47:0]			PCOUT[DSP_ROW_NUM-1:0][DSP_COL_NUM-1:0];
	wire[47:0]			P[DSP_ROW_NUM-1:0][DSP_COL_NUM-1:0];
	
	reg[47:0]			result[DSP_COL_NUM-1:0];
	wire[47:0]          result_one[DSP_COL_NUM-1:0];
    reg		            result_valid;

    genvar i,j;//公用
    generate
    for( i = 0; i < DSP_ROW_NUM ; i = i + 1)begin: gen_compute_unit_LOOP1
    	for( j = 0; j < DSP_COL_NUM; j = j + 1)begin: gen_compute_unit_LOOP2
    		primary_compute_unit #(
				.WORD_WIDTH(WORD_WIDTH) //INT16 INT8
			)
			u_primary_compute_unit
			(	
			/////////////////////////////////////////////////////////////
				.clk(clk),  //DSP工作时钟
				.rst(rst),

				.fmap_valid(fmap_valid[i]), //每次都横向传播该组数据
				.fmap_data(fmap_data[i*WORD_WIDTH +: WORD_WIDTH]), //切片横向的数据

				.weight_wr_en(weight_wr_en[j* 2 +: 2]),  //ping、pong buffer个一个  纵向共用一个wr_en
				.weight_wr_addr(weight_wr_addr),         //
				.weight_din(weight_din[i*WORD_WIDTH +:WORD_WIDTH]), //将512bit数据分给各列

				.weight_rd_addr_base(weight_rd_addr_base),
				.kernel_size(kernel_size),
                //.C(C[i][j]),
				.dsp_model_sel(dsp_model_sel[i]),
				.PCIN(PCIN[i][j]),
				.PCOUT(PCOUT[i][j]),
				.P(P[i][j])

			);

            //DSP的计算工作模式
			if(i == 0) begin: first_dsp_row

				assign dsp_model_sel[i] = 1'b0;  //DSP model: A*B
				assign PCIN[i][j] 		= 48'd0;

			end else if(i > 0 && i < DSP_ROW_NUM-1) begin: center_dsp_row

				assign dsp_model_sel[i] = 1'b1; //DSP model: A*B + PCIN
				assign PCIN[i][j] 		= PCOUT[i-1][j];

			end	else begin : last_dsp_row
            //当卷积核为1x1时，不需要进行前项累加操作，DSP model为A*B + PCIN, PCIN代表通道方向的值
				assign dsp_model_sel[i] = 1'b1 ; //DSP model: A*B + PCIN
				assign PCIN[i][j] 		= PCOUT[i-1][j];				
				assign result_one[j] 	= (result_valid == 1'b1) ? P[i][j] : 48'd0;   //此结果为KernelSize为1时的输出结果

				//assign last_row_C[i][j] = (result_valid == 1'b1) ? 48'd0 : P[i][j];
				//assign C[i][j] 			= (kernel_size==1) ? 48'd0 : last_row_C[i][j]; //最后一行把之前的数据进行累加
			end

    	end
    end
    endgenerate
    


    //最后结果的什么时候输出
    reg 		state;           //该信号当fmap_vaild有效时，每个时钟跳变一次，用于区分ping和pong的输出
    reg         c_state;         //每个时钟跳变一次，用于累加单次输出结果时区分ping和pong（3*3需要将前8次结果记录到C最后相加得到PSUM）
    reg[5:0]	count;
    reg[2:0]	result_valid_state;
    reg			fmap_valid_r1,fmap_valid_r2,fmap_valid_r3;
    reg         result_valid_r1;

	always @(posedge clk) begin
		if (rst) begin
			count <= 0;
			result_valid <= 0;
			state <= 1'b0;
			result_valid_state <= 0;
            c_state       <= 1'b0;
			fmap_valid_r1 <= 1'b0;
			fmap_valid_r2 <= 1'b0;
			fmap_valid_r3 <= 1'b0;

		end
		else begin
			if(kernel_size==1)begin        //生成kernel_size为1的时的输出vaild信号
				fmap_valid_r1 <= fmap_valid[DSP_ROW_NUM-1];
				fmap_valid_r2 <= fmap_valid_r1;
				fmap_valid_r3 <= fmap_valid_r2;
				result_valid  <= fmap_valid_r3;     //延时相应个时钟
			end
			else begin //dsp 的设计模式为3x3   此时的延时也为两部分 
			    c_state <= ~c_state;
				if(fmap_valid[DSP_ROW_NUM-1]) state <= ~state;
				if(state) begin // 2*kernel*kernel 个数个的数据
					count <= count + 1;
				end 

				if(count == kernel_size * kernel_size)
					count <= 0;

				case (result_valid_state)
					0:begin
						result_valid <= 1'b0;
						result_valid_r1 <= result_valid;
						if(count == kernel_size * kernel_size) //9或者1的数据的是否连通
							result_valid_state <= 1;
					end
					1:begin
					    result_valid <= 1'b1;
					    result_valid_r1 <= result_valid;       //由于3x3模式结果采用reg类型，结果有效信号延后一个时钟
						result_valid_state <= 2;
					end
					2:begin
						result_valid <= 1'b1;
						result_valid_r1 <= result_valid;
						result_valid_state <= 0;
					end
					default : begin
						result_valid_state <= 0;
						result_valid <= 1'b0;
						result_valid_r1 <= result_valid;
					end
				endcase
			end
		end
	end

	reg [47:0]			C_temp[1:0][DSP_COL_NUM-1:0];  //记录前8像素的运算结果，[0][x]记录ping通道，[1][x]记录pong通道
	integer             s,m;
													   //一个时钟DSP阵列输出16个通道的结果，vaild每次连续抬高两个时钟，计算出一个像素的32个输出通道结果
	always @(posedge clk) begin
	    for( s = 0; s < DSP_ROW_NUM ; s = s + 1)begin: gen_32
	     	for( m = 0; m < DSP_COL_NUM; m= m + 1)begin: gen_16
	     	    if (!rst)begin
	     	    	if(result_valid == 0)begin         //3*3模式下，需要将前8次结果记录到C_temp最后相加得到PSUM
	     	           result[m] <= 48'd0;
	     	           if(c_state)
	     	       	      C_temp[0][m] <= C_temp[0][m] + P[s][m];	       
	                   else 
	               	      C_temp[1][m] <= C_temp[1][m] + P[s][m]; 
	     	        end
	 			    else begin                         //第9次将阵列运算结果相加，得到一个输出像素的32个输出通道，vaild两个时钟连续抬高，每个时钟输出16个通道（ping，pong）
	                   if(c_state)begin
	               	      result[m]    <= C_temp[0][m] + P[s][m]; 
	 				      C_temp[0][m] <= 48'd0;
	                   end
	                   else begin
	                      result[m]    <= C_temp[1][m] + P[s][m];
	               	      C_temp[1][m] <= 48'd0;
	                   end
	 			    end
	     	    end
	     	    else begin
	     	    	C_temp[0][m] <= 48'd0;
	                C_temp[1][m] <= 48'd0;
	     	    end
	        end
	 	end
	 end

	wire                result_valid_r1_out;

	assign result_valid_r1_out  =  result_valid_r1;
	assign result_valid_out     =  (kernel_size==1) ? result_valid : result_valid_r1;
	

	genvar k;
	generate          //转化为一条数据
	for(k=0;k<DSP_COL_NUM;k=k+1)begin
		assign result_out[48*k +:48] = (kernel_size==1) ? result_one[k] : result[k];
	end
	endgenerate




//wire[47:0]          tmp0_wire,tmp5_wire,tmp15_wire;
//assign              tmp0_wire = C_temp[0][0];
//assign              tmp5_wire = C_temp[1][0];
//assign              tmp15_wire  = C_temp[0][15];
/*wire[47:0] C_1_0,C_1_1,C_1_2,C_1_3,C_1_4,C_1_5,C_1_6,C_1_7,C_1_8,C_1_9,C_1_10,C_1_11,C_1_12,C_1_13,C_1_14,C_1_15;
wire[47:0] last_1_0,last_1_1,last_1_2,last_1_3,last_1_4,last_1_5,last_1_6,last_1_7,last_1_8,last_1_9,last_1_10,last_1_11,last_1_12,last_1_13,last_1_14,last_1_15;
// wire C_1_0,C_1_1,C_1_2,C_1_3,C_1_4,C_1_5,C_1_6,C_1_7,C_1_8,C_1_9,C_1_10,C_1_11,C_1_12,C_1_13,C_1_14,C_1_15;
// wire C_2_0,C_2_1,C_2_2,C_2_3,C_2_4,C_2_5,C_2_6,C_2_7,C_2_8,C_2_9,C_2_10,C_2_11,C_2_12,C_2_13,C_2_14,C_2_15;
// wire C_3_0,C_3_1,C_3_2,C_3_3,C_3_4,C_3_5,C_3_6,C_3_7,C_3_8,C_3_9,C_3_10,C_3_11,C_3_12,C_3_13,C_3_14,C_3_15;
// wire C_4_0,C_4_1,C_4_2,C_4_3,C_4_4,C_4_5,C_4_6,C_4_7,C_4_8,C_4_9,C_4_10,C_4_11,C_4_12,C_4_13,C_4_14,C_4_15;
// wire C_5_0,C_5_1,C_5_2,C_5_3,C_5_4,C_5_5,C_5_6,C_5_7,C_5_8,C_5_9,C_5_10,C_5_11,C_5_12,C_5_13,C_5_14,C_5_15;
// wire C_6_0,C_6_1,C_6_2,C_6_3,C_6_4,C_6_5,C_6_6,C_6_7,C_6_8,C_6_9,C_6_10,C_6_11,C_6_12,C_6_13,C_6_14,C_6_15;
// wire C_7_0,C_7_1,C_7_2,C_7_3,C_7_4,C_7_5,C_7_6,C_7_7,C_7_8,C_7_9,C_7_10,C_7_11,C_7_12,C_7_13,C_7_14,C_7_15;

// wire C_8_0,C_8_1,C_8_2,C_8_3,C_8_4,C_8_5,C_8_6,C_8_7,C_8_8,C_8_9,C_8_10,C_8_11,C_8_12,C_8_13,C_8_14,C_8_15;
// wire C_9_0,C_9_1,C_9_2,C_9_3,C_9_4,C_9_5,C_9_6,C_9_7,C_9_8,C_9_9,C_9_10,C_9_11,C_9_12,C_9_13,C_9_14,C_9_15;
// wire C_10_0,C_10_1,C_10_2,C_10_3,C_10_4,C_10_5,C_10_6,C_10_7,C_10_8,C_10_9,C_10_10,C_10_11,C_10_12,C_10_13,C_10_14,C_10_15;
// wire C_11_0,C_11_1,C_11_2,C_11_3,C_11_4,C_11_5,C_11_6,C_11_7,C_11_8,C_11_9,C_11_10,C_11_11,C_11_12,C_11_13,C_11_14,C_11_15;
// wire C_12_0,C_12_1,C_12_2,C_12_3,C_12_4,C_12_5,C_12_6,C_12_7,C_12_8,C_12_9,C_12_10,C_12_11,C_12_12,C_12_13,C_12_14,C_12_15;
// wire C_13_0,C_13_1,C_13_2,C_13_3,C_13_4,C_13_5,C_13_6,C_13_7,C_13_8,C_13_9,C_13_10,C_13_11,C_13_12,C_13_13,C_13_14,C_13_15;
// wire C_14_0,C_14_1,C_14_2,C_14_3,C_14_4,C_14_5,C_14_6,C_14_7,C_14_8,C_14_9,C_14_10,C_14_11,C_14_12,C_14_13,C_14_14,C_14_15;
wire[47:0] C_31_0,C_31_1,C_31_2,C_31_3,C_31_4,C_31_5,C_31_6,C_31_7,C_31_8,C_31_9,C_31_10,C_31_11,C_31_12,C_31_13,C_31_14,C_31_15;
wire[47:0] last_31_0,last_31_1,last_31_2,last_31_3,last_31_4,last_31_5,last_31_6,last_31_7,last_31_8,last_31_9,last_31_10,last_31_11,last_31_12,last_31_13,last_31_14,last_31_15;

assign C_1_0= C[1][0];
assign C_1_1= C[1][1];
assign C_1_2= C[1][2];
assign C_1_3= C[1][3];
assign C_1_4= C[1][4];
assign C_1_5= C[1][5];
assign C_1_6= C[1][6];
assign C_1_7= C[1][7];
assign C_1_8= C[1][8];
assign C_1_9= C[1][9];
assign C_1_10=C[1][10];
assign C_1_11=C[1][11];
assign C_1_12=C[1][12];
assign C_1_13=C[1][13];
assign C_1_14=C[1][14];
assign C_1_15=C[1][15];

assign last_1_0= last_row_C[1][0];
assign last_1_1= last_row_C[1][1];
assign last_1_2= last_row_C[1][2];
assign last_1_3= last_row_C[1][3];
assign last_1_4= last_row_C[1][4];
assign last_1_5= last_row_C[1][5];
assign last_1_6= last_row_C[1][6];
assign last_1_7= last_row_C[1][7];
assign last_1_8= last_row_C[1][8];
assign last_1_9= last_row_C[1][9];
assign last_1_10=last_row_C[1][10];
assign last_1_11=last_row_C[1][11];
assign last_1_12=last_row_C[1][12];
assign last_1_13=last_row_C[1][13];
assign last_1_14=last_row_C[1][14];
assign last_1_15=last_row_C[1][15];

assign C_31_0= C[31][0];
assign C_31_1= C[31][1];
assign C_31_2= C[31][2];
assign C_31_3= C[31][3];
assign C_31_4= C[31][4];
assign C_31_5= C[31][5];
assign C_31_6= C[31][6];
assign C_31_7= C[31][7];
assign C_31_8= C[31][8];
assign C_31_9= C[31][9];
assign C_31_10=C[31][10];
assign C_31_11=C[31][11];
assign C_31_12=C[31][12];
assign C_31_13=C[31][13];
assign C_31_14=C[31][14];
assign C_31_15=C[31][15];

assign last_31_0= last_row_C[31][0];
assign last_31_1= last_row_C[31][1];
assign last_31_2= last_row_C[31][2];
assign last_31_3= last_row_C[31][3];
assign last_31_4= last_row_C[31][4];
assign last_31_5= last_row_C[31][5];
assign last_31_6= last_row_C[31][6];
assign last_31_7= last_row_C[31][7];
assign last_31_8= last_row_C[31][8];
assign last_31_9= last_row_C[31][9];
assign last_31_10=last_row_C[31][10];
assign last_31_11=last_row_C[31][11];
assign last_31_12=last_row_C[31][12];
assign last_31_13=last_row_C[31][13];
assign last_31_14=last_row_C[31][14];
assign last_31_15=last_row_C[31][15];*/



endmodule
