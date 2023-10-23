`timescale      1ns/1ps
// *********************************************************************************
// Project Name : 
// Email        : 
// Create Time  : 
// File Name    : .v
// Module Name  : 
// Abstract     :
// editor		: sublime text 3
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
// 
//  
// *********************************************************************************


//！！！！！！！！！！！！！加入pooling_mode 
//0为s2 1为s1



module pooling#(
	parameter C_AXI_DATA_WIDTH = 512
    )(
    input									 clk,
	input 									 rst,

	input [10:0]  							image_width,    //fmap的宽度
	input [10:0]  							read_row_num,   //读取的行数

//cmd  表示cmd的状态 
	input 									pooling_cmd_valid,//1 为有此模块 经过pooling 为0 数据要直通
	output									pooling_idle,   //multi-clocks,是否空闲，1表示：idle，0表示：busy  
	output									pooling_done,    //给sub_cmd模块的信号
	input									pooling_done_ack,

//从上级来的数据
    input                                   sum_valid, //上一级数据的valid
    input [C_AXI_DATA_WIDTH-1:0]            sum_data,   //16bit下 32*16   8bit下 64*8
    output                                  pooling_prog_full, //给前面模块空面信号
    output                                  pooling_prog_empty,

//给后一模块数据
	input                                   upsampling_prog_full, //后一个模块给其满信号
	output                                  pooling_data_valid,
	output [C_AXI_DATA_WIDTH-1:0]           poooling_data
	
    );
	



	pool_mem_gen_0 uut_ping_mem (
			  .clka(clk),    // input wire clka
			  .ena(ping_mem_ena),      // input wire ena
			  .wea(ping_mem_wea),      // input wire [0 : 0] wea
			  .addra(ping_mem_addra),  // input wire [7 : 0] addra
			  .dina(ping_mem_dina),    // input wire [15 : 0] dina
			  .douta(ping_mem_douta)  // output wire [15 : 0] douta
	);

	pool_mem_gen_0 uut_ping_mem2 (
			  .clka(clk),    // input wire clka
			  .ena(ping_mem_ena2),      // input wire ena
			  .wea(ping_mem_wea2),      // input wire [0 : 0] wea
			  .addra(ping_mem_addra2),  // input wire [7 : 0] addra
			  .dina(ping_mem_dina2),    // input wire [15 : 0] dina
			  .douta(ping_mem_douta2)  // output wire [15 : 0] douta
	);


	pool_mem_gen_0 uut_pong_mem (
			  .clka(clk),    // input wire clka
			  .ena(pong_mem_ena),      // input wire ena
			  .wea(pong_mem_wea),      // input wire [0 : 0] wea
			  .addra(pong_mem_addra),  // input wire [7 : 0] addra
			  .dina(pong_mem_dina),    // input wire [15 : 0] dina
			  .douta(pong_mem_douta)  // output wire [15 : 0] douta
	);

	pool_mem_gen_0 uut_pong_mem2 (
			  .clka(clk),    // input wire clka
			  .ena(pong_mem_ena2),      // input wire ena
			  .wea(pong_mem_wea2),      // input wire [0 : 0] wea
			  .addra(pong_mem_addra2),  // input wire [7 : 0] addra
			  .dina(pong_mem_dina2),    // input wire [15 : 0] dina
			  .douta(pong_mem_douta2)  // output wire [15 : 0] douta
	);
	




	always @(posedge clk) begin
		if(rst) begin
			 ping_mem_ena <= 0;
			 ping_mem_ena2 <= 0;
			 pong_mem_ena <= 0;
			 pong_mem_ena2 <= 0;
			 ping_mem_addra <= 0;
			 ping_mem_addra2 <= 0;
			 pong_mem_addra <= 0;
			 pong_mem_addra2 <= 0;

		end 
		else begin
			case(data_in_state)
			0 : begin
				if(pooling_cmd_valid == 1)begin
					if (sum_valid) begin
						data_in_state <= 1;
						ping_mem_ena <= 1;
						ping_mem_wea <= 1;
						ping_mem_addra <= ping_mem_addra + 1;
						ping_mem_dina <= sum_data;
					end
				end
				else begin
					//come_in_prog_full_top_r<=come_out_prog_full_top; //无数据就直通
					sum_valid<=sum_valid;
					sum_data<=sum_data;
					data_in_state <= 0;
				end
			end
			
			1 : begin
				if (sum_valid) begin
					data_in_state <= 1;
					ping_mem_ena <= 1;
					ping_mem_wea <= 1;
					ping_mem_addra <= ping_mem_addra + 1;
					ping_mem_dina <= sum_data;
				end


			end



		end
	end



























	wire [8:0] fifo_data_count;
	wire fifo_empty;
	wire fifo_prog_full;
	reg fifo_wr_en,fifo_rd_en;
	reg  [C_AXI_DATA_WIDTH-1:0] fifo_din;
	wire  [C_AXI_DATA_WIDTH-1:0] fifo_dout;

	xpm_fifo_async #(
		.CDC_SYNC_STAGES(2),       // DECIMAL
		.DOUT_RESET_VALUE("0"),    // String
		.ECC_MODE("no_ecc"),       // String
		.FIFO_MEMORY_TYPE("auto"), // String
		.FIFO_READ_LATENCY(0),     // DECIMAL
		.FIFO_WRITE_DEPTH(256),   // DECIMAL
		.FULL_RESET_VALUE(0),      // DECIMAL
		.PROG_EMPTY_THRESH(9),    // DECIMAL
		.PROG_FULL_THRESH(128),     // DECIMAL
		.RD_DATA_COUNT_WIDTH(9),   // DECIMAL
		.READ_DATA_WIDTH(C_AXI_DATA_WIDTH),      // DECIMAL
		.READ_MODE("fwft"),         // String
		.RELATED_CLOCKS(0),        // DECIMAL
		.USE_ADV_FEATURES("0402"), // String
		.WAKEUP_TIME(0),           // DECIMAL
		.WRITE_DATA_WIDTH(C_AXI_DATA_WIDTH),     // DECIMAL
		.WR_DATA_COUNT_WIDTH(9)    // DECIMAL
	)
	xpm_fifo_async_cache_data ( 
		.rst(rst),  
		.wr_clk(clk),             
		.wr_en(fifo_wr_en),
		.din(fifo_din), 

		.rd_clk(clk),              
		.rd_en(fifo_rd_en),
		.dout(fifo_dout), 
		.empty(fifo_empty), 
		.prog_full(fifo_prog_full),   
		.rd_data_count(fifo_data_count)
	);





	always @(posedge clk) begin
		if(rst) begin
			 fifo_wr_en<=0;
			 fifo_din<=0;
			 come_out_data_top_r<=0;
		end 
		else begin
			if(pooling_cmd_valid==1)begin
				if((come_in_valid_top==1)&&(fifo_prog_full==0))begin //先把数据写入
			 	 	fifo_wr_en<=come_in_valid_top;
			 	 	fifo_din<=come_in_data_top;
				end
				else begin
					fifo_wr_en<=0;
				end
			end
			else begin
				come_in_prog_full_top_r<=come_out_prog_full_top; //无数据就直通
				come_out_valid_top_r<=come_in_valid_top;
				come_out_data_top_r<=come_out_data_top;
			end
		end
	end





	assign  pooling_mode_w = pooling_mode;

	always @(posedge clk) begin
		if (rst) begin
			// reset
			data_in_state <= 0;
		end
		else begin 
		case (data_in_state)
			0 : begin
					if (pooling_cmd_valid) begin   //若指令无效等待，有效进入下一状态
						if (pooling_mode_w) data_in_state <= 11; 
						else                data_in_state <= 1;   
					end 
						
					else data_in_state <= 0;
					
					pong_fifo_wr_en <= 0;
					ping_fifo_wr_en <= 0;
				end
				
			
			1: begin                                 //1-4为2x2 s2 奇数行数据写入
				if (sum_valid)  
				begin
					ping_tmp_reg  <= sum_data;
					data_in_state <= 2;
				end
			end

			2: begin
				if (sum_valid)  
				begin
					pong_tmp_reg  <= sum_data;
					data_in_state <= 3;
				end
			end


			3: begin
				if (sum_valid)  
				begin
					if(sum_data > ping_tmp_reg)
							ping_tmp_reg <= sum_data;
					ping_fifo_wr_en <= 1;
					data_in_state <= 4;
				end
			end

			4: begin
				if (sum_valid)
				begin
					if(sum_data > pong_tmp_reg)
							pong_tmp_reg <= sum_data;
					pong_fifo_wr_en <= 1;
					data_in_state <= 0;
				end
				ping_fifo_wr_en <= 0;
			end

			5: begin                                  //5-10为2x2 s2 偶数行数据写入
				if (sum_valid) 
				begin
					ping_tmp_reg <= sum_data;
					data_in_state <= 6;
				end
				
			end


			6: begin
				if (sum_valid)  
				begin
					pong_tmp_reg  <= sum_data;
					data_in_state <= 7;
				end
			end


			7: begin
				if (sum_valid)
				begin
					if(sum_data > ping_tmp_reg)
							ping_tmp_reg <= sum_data;
					data_in_state <= 8;
				end

			end

			8: begin
				if (sum_valid)
				begin
					if(sum_data > pong_tmp_reg)
							pong_tmp_reg <= sum_data;
					ping_fifo_rd_en <= 1;
					data_in_state <= 9;
				end

			end

			9: begin
				if (sum_valid)
				begin
					if(ping_fifo_out > ping_tmp_reg)
							ping_tmp_reg <= ping_fifo_out;
					pong_fifo_rd_en <= 1;
					ping_fifo_wr_en <= 1;
					data_in_state <= 10;
				end

			end


			10: begin
				if (sum_valid) 
				begin
					if (pong_fifo_out > pong_tmp_reg) 
							ping_tmp_reg <= ping_fifo_out;
					ping_fifo_wr_en <= 1;
					data_in_state <= 0;
				end

			end


			11: begin
				if (sum_valid)  
				begin
					ping_tmp_reg  <= sum_data;
					data_in_state <= 12;
				end
			end


			12: begin
				if (sum_valid)  
				begin
					pong_tmp_reg  <= sum_data;
					data_in_state <= 13;
				end
			end


			13: begin
				if (sum_valid)  
				begin
					if(sum_data > ping_tmp_reg)
							ping_tmp_reg <= sum_data;
					ping_fifo_wr_en <= 1;
					ping_tmp_reg2 <= sum_data;
					data_in_state <= 14;
				end
			end


			14: begin
				if (sum_valid)
				begin
					if(sum_data > pong_tmp_reg)
							pong_tmp_reg <= sum_data;
					pong_fifo_wr_en <= 1;
					pong_tmp_reg2 <= sum_data;
					data_in_state <= 0;
				end
				ping_fifo_wr_en <= 0;
			end

			15: begin
				if (sum_valid) begin
					if ()


				end


			end


			default : data_in_state <= 0;
		end
	end



	reg [3:0]  data_in_state_s1

	always @(posedge clk) begin
		if (rst) begin
			// reset
			data_in_state_s1 <= 0;
		end
		else begin
			case (data_in_state_s1) 
			0 : begin
				if (pooling_cmd_valid) begin   //若指令无效等待，有效进入下一状态
						if (pooling_mode_w) data_in_state_s1 <= 11; 
						else                data_in_state_s1 <= 1;   
					end 
						
					else data_in_state_s1 <= 0;
					
					pong_fifo_wr_en <= 0;
					ping_fifo_wr_en <= 0;
			end


				1: begin                                 //1-4为2x2 s2 奇数行数据写入
					if (sum_valid)  
					begin
						ping_tmp_reg  <= sum_data;
						data_in_state_s1 <= 2;
					end
				end

				2: begin
					if (sum_valid)  
					begin
						pong_tmp_reg  <= sum_data;
						data_in_state_s1 <= 3;
					end
				end


				3: begin
					if (sum_valid)  
					begin
						if(sum_data > ping_tmp_reg)
								ping_tmp_reg <= sum_data
						ping_fifo_wr_en <= 1;
						data_in_state_s1 <= 4;
					end
				end

				4: begin
					if (sum_valid)
					begin
						if(sum_data > pong_tmp_reg)
								pong_tmp_reg <= sum_data
						pong_fifo_wr_en <= 1;
						data_in_state_s1 <= 0;
					end
					ping_fifo_wr_en <= 0;
				end



			end











		end
	end
























/*

    always @(posedge clk) begin
    	if (rst) begin
    		// reset
    		addr_cnt <= 0;
    		data_in_state <= 0;
    	end

    	else begin
    		case(data_in_state)
    			0 : begin
    				if (sum_valid)  begin
    					wr_en[0][0] <= 1;
    					addr_mem[0][0] <= addr_cnt;
    					data_mem_in[0][0] <= sum_data[15:0];
    					addr_cnt <= addr_cnt + 1;
    					if (addr_cnt == image_width) data_in_state <= 1;
    				end 
    			end


    			1 : begin
    				if (sum_valid)  begin
    					wr_en[0][1] <= 1;
    					addr_mem[0][1] <= addr_cnt;
    					data_mem_in[0][1] <= sum_data[15:0];
    					addr_cnt <= addr_cnt + 1;
    					if (addr_cnt == image_width) data_in_state <= 2;
    				end

    			end


    			2 : begin
    				if (sum_valid)  begin
    					wr_en[0][2] <= 1;
    					addr_mem[0][2] <= addr_cnt;
    					data_mem_in[0][2] <= sum_data[15:0];
    					addr_cnt <= addr_cnt + 1;
    					if (addr_cnt == image_width) data_in_state <= 0;
    				end

    			end

    	end
    end


     always @(posedge clk) begin
    	if (rst) begin
    		// reset
    		addr_cnt <= 0;
    		data_in_state <= 0;
    	end
    	
    	else begin
    		case(data_in_state)
    			0 : begin
    				if (sum_valid)  begin
    					wr_en[1][0] <= 1;
    					addr_mem[1][0] <= addr_cnt;
    					data_mem_in[1][0] <= sum_data[15:0];
    					addr_cnt <= addr_cnt + 1;
    					if (addr_cnt == image_width) data_in_state <= 1;
    				end 
    			end


    			1 : begin
    				if (sum_valid)  begin
    					wr_en[1][1] <= 1;
    					addr_mem[1][1] <= addr_cnt;
    					data_mem_in[1][1] <= sum_data[15:0];
    					addr_cnt <= addr_cnt + 1;
    					if (addr_cnt == image_width) data_in_state <= 2;
    				end

    			end


    			2 : begin
    				if (sum_valid)  begin
    					wr_en[1][2] <= 1;
    					addr_mem[1][2] <= addr_cnt;
    					data_mem_in[1][2] <= sum_data[15:0];
    					addr_cnt <= addr_cnt + 1;
    					if (addr_cnt == image_width) data_in_state <= 0;
    				end

    			end

    	end
    end



    
    














	
	localparam  IDLE = 0; 
	localparam  REC_DATA = 1;
	localparam  COMPARE_0_1 = 2;
	localparam  FIFO_IN = 3;
	localparam  FIFO_OUT = 4;
	localparam  COMPARE_1_2 = 5;
	localparam  COMPARE_2_3 = 6;
	localparam  DATA_OUT = 7;
	
	
	reg [7:0] pic_done_counter;
	
	
	always @(posedge clk) begin
	       if(rst)
				pic_done_counter <= 8'h0;
			else begin
			    if (pic_done_counter < (image_width * read_row_num)) begin
					pic_done_counter <= pic_done_counter + 1'd1;
				end else
					pic_done_counter <= 8'h0;
			end
	end
	
	always @(posedge clk) begin
		   if (pic_done_counter == image_width * read_row_num - 1) begin
				pooling_done <= 1'b1;
		   end else if (pic_done_counter != 8'h0&& pooling_done_ack == 1'b1) 
				pooling_done <= 1'b0;
	end
	
	
	fifo_generator_0 f0(
		.clk(clk),
		.srst(rst),
		.prog_full(prog_full_0),
		.prog_empty(prog_empty_0),
		.din(sum_data),
		.wr_en(sum_valid),
		.dout(f0_out),
		.rd_en(rd0_en)
	);
	
	fifo_generator_0 f1(
		.clk(clk),
		.srst(rst),
		.prog_full(prog_full_1),
		.prog_empty(prog_empty_1),
		.din(f1_in),
		.wr_en(wr1_en),
		.dout(poooling_data),
		.rd_en(rd1_en)
	);
	
	fifo_generator_0 f2(
		.clk(clk),
		.srst(rst),
		.prog_full(prog_full_2),
		.prog_empty(prog_empty_2),
		.din(f2_in),
		.wr_en(wr2_en),
		.dout(poooling_data),
		.rd_en(rd2_en)
	);
	
	  
	wire  [15:0] input_data [31:0];
	assign pooling_prog_full =  {prog_full_0 | prog_full_1};
	assign pooling_prog_empty = {prog_empty_0 | prog_empty_1};
	
	
	always @(posedge clk) begin
	if (rst) 
		current_state  	<= IDLE; 
	else 
		current_state 	<= next_state;
	end

	

	always @(*) begin
		next_state = IDLE;
		case(current_state)
			IDLE:begin
				if(pooling_data_valid)  
					next_state = REC_DATA;
				else 
					next_state = IDLE;
			end 
			REC_DATA:begin
				next_state = COMPARE_0_1;
			end 
			COMPARE_0_1:begin
				next_state = FIFO_IN;
			end
		    FIFO_IN: begin
			   if(done)
				  next_state = FIFO_OUT;
				else 
				  next_state = REC_DATA;
			end
			FIFO_OUT:begin
				next_state = COMPARE_1_2;
			end
			COMPARE_1_2:begin
				next_state = COMPARE_2_3;
			end
			COMPARE_2_3:begin
				next_state = DATA_OUT;
			end
			DATA_OUT:begin
				if(pooling_done)
					next_state = IDLE;
				else 
					next_state = FIFO_OUT;
			end
			default:begin
				next_state = IDLE;
			end 
		endcase
	end 


    genvar i;//公用
    generate
    for( i = 0; i < 8 ; i = i + 1)begin: gen_compute_unit_LOOP1
    		assign com0_tmp[i] = f0_out[i* 32 +: 16]
    end
    endgenerate




    genvar j;//公用
    generate
    for( j = 0; j < 8 ; j = j + 1)begin: gen_compute_unit_LOOP2
    		assign com1_tmp[j] = f0_out[16 + j* 32 +: 16]
    end
    endgenerate


/*	genvar count;
	generate
	for( count = 0; count < 32; count = count + 1)begin:
		assign input_data[count] = f0_out[16*(count+1)-1 : 16*count];
		assign output_data[count] = f1_out[16*(count+1)-1 : 16*count];
	end
	endgenerate
	*/
	/*reg   wr0_en;
	reg   rd0_en;
	reg   wr1_en;
	reg   rd1_en; 
	reg   wr2_en;
	reg   rd2_en;
	
		
		always @(posedge clk) begin
			case(next_state)
				IDLE:begin
					tmp[count_1] <= 16'h0;
					rd0_en <= 1'b1;
					wr0_en <= 1'b0;
					rd1_en <= 1'b0;
					wr1_en <= 1'b0;
					//rd2_en <= 1'b0;
					//wr2_en <= 1'b0;		
				end 
				REC_DATA:begin  
					tmp0 <= com0_tmp[k];
					tmp1 <= com1_tmp[k];
					rd0_en <= 1'b0;
					wr1_en <= 1'b0;
				end 
				COMPARE_0_1:begin
					(com0_tmp[k + 1] > tmp0)?tmp0 <= com0_tmp[k + 1]: ;
					(com1_tmp[k + 1] > tmp1)?tmp1 <= com1_tmp[k + 1]: ;
				end
				FIFO_IN:begin
					wr1_en <= 1'b0;
					rd0_en <= 1'b0;
				end
				FIFO_OUT:begin
					wr1_en <= 1'b0;
					rd1_en <= 1'b0;
					rd0_en <= 1'b0;
					//tmp[count_1] <= output_data[count_1];
				end
				COMPARE_1_2:begin
					rd1_en <= 1'b0;
					rd0_en <= 1'b0;
					//(input_data[count_1] > tmp[count_1])?tmp[count_1] <= input_data[count_1]: ;
					(com0_tmp[k + 2] > tmp0)?tmp0 <= com0_tmp[k + 2]: ;
					(com1_tmp[k + 2] > tmp1)?tmp1 <= com1_tmp[k + 2]: ;
				end
				COMPARE_2_3:begin
					wr2_en <= 1'b0;
					rd0_en <= 1'b0;
					//(input_data[count_1] > tmp[count_1])?tmp[count_1] <= input_data[count_1]: ;
					(com0_tmp[k + 3] > tmp0)?tmp0 <= com0_tmp[k + 3]: ;
					(com1_tmp[k + 3] > tmp1)?tmp1 <= com1_tmp[k + 3]: ;
				end
				DATA_OUT:begin
					output_tmp[j* 64 +: 16] <= tmp0;
					output_tmp[16 + j* 64 +: 16] <= tmp1;
					wr2_en <= 1'b1;
				end
				default:begin
					tmp[count_1] <= 16'h0;
				end 
			endcase		
		end 	
	
	
	
		
	wire  f1_in_wire [C_AXI_DATA_WIDTH-1:0];
	wire  f2_in_wire[C_AXI_DATA_WIDTH-1:0];
	
	
	
	
	assign f1_in_wire = 	output_tmp;
						  
	
	
	
	always @(*) begin
		f1_in = f1_in_wire;
		//f2_in = f2_in_wire;
	end*/


	
endmodule
