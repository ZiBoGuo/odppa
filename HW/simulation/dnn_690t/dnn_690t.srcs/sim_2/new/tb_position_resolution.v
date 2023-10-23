`timescale 1ps/100fs
//`timescale<时间单位>/<时间精度>
module tb_position_resolution;

localparam RESET_PERIOD = 200000; //in pSec 

parameter RST_ACT_LOW           = 0;
                                // =1 for active low reset,
                                // =0 for active high.
parameter CLKIN_PERIOD          = 10000;//10000ps=10ns
                                // Input Clock Period
reg                         sys_rst_n;
wire                        sys_rst;
reg                         sys_clk_i;
wire                        clk;
//**************************************************************************//

  //**************************************************************************//
  // Reset Generation
  //**************************************************************************//
  initial begin
    sys_rst_n = 1'b0;
    #RESET_PERIOD
      sys_rst_n = 1'b1;
   end

   assign sys_rst = RST_ACT_LOW ? sys_rst_n : ~sys_rst_n;

  //**************************************************************************//
  // Clock Generation
  //**************************************************************************//

  initial
    sys_clk_i = 1'b0;
  always
    sys_clk_i = #(CLKIN_PERIOD/2.0) ~sys_clk_i; //100MHz

  assign clk = sys_clk_i;

reg[511:0]  				     temp;
integer                      fp_r,fp_r1,count1,count2,count3,fp_w;
wire [511:0]                        idata;
wire                         vaild;
reg                          vaild_r;
wire [15:0]		 odata;
wire               odata_vaild;

wire [223:0]          det1;
wire [223:0]		  det2;
wire [223:0]		  det3;

wire                  det1_vaild;
wire                  det2_vaild;
wire                  det3_vaild;

reg [5:0]             layer_w_r;
reg [5:0]             layer_h_r;
reg [15:0]			  fl_r;

reg [5:0]			  log2w_r;
reg [5:0]             log2h_r;
reg                   mask_r;

wire [5:0]             layer_w;
wire [5:0]             layer_h;
wire [15:0]			   fl;
wire [5:0]			   log2w;
wire [5:0]             log2h;
wire                   mask;

initial  
begin 
    fp_r1=$fopen("F:\\github\\odppa\\DATA\\input\\19_split_1_3_r0_L2.txt","r");//以读的方式打开文件
    fp_r=$fopen("F:\\github\\odppa\\DATA\\input\\19_split_1_3_r0_L1.txt","r");  
    fp_w=$fopen("F:\\github\\odppa\\DATA\\output\\19_split_1_3_r0_fpga.txt","w");
end 


	localparam IDLE 				=  0;
	localparam SEND_YOLO1    		=  1;
    localparam WAIT_DELY            =  2;
    localparam SEND_YOLO2           =  3;
    localparam NOP                  =  5;

    reg[4:0]   current_state,next_state;

    always @(posedge clk) begin
    	if (sys_rst) 
    		current_state  <= IDLE; 
    	else 
    		current_state <= next_state;
    end
    
    always @(*) begin
    	next_state = IDLE;
    	case(current_state)
    		IDLE:begin
    			next_state = SEND_YOLO1;
    		end 

    		SEND_YOLO1:begin                                 
    			if(count1 == 128)              
    				next_state = WAIT_DELY;
    			else 
    				next_state = SEND_YOLO1;
    		end 

            WAIT_DELY:begin
                if(count2 == 20)              
    				next_state = SEND_YOLO2;
    			else 
    				next_state = WAIT_DELY;
            end

            SEND_YOLO2:begin
                if(count3 == 512)              
    				next_state = NOP;
    			else 
    				next_state = SEND_YOLO2;
            end

            NOP:begin
                next_state = NOP;
            end
    		default:begin
    			next_state = IDLE;
    		end 
    	endcase
    end 


    always @(posedge clk) begin
        if(sys_rst)begin
            temp    <= 0;
			count1   <= 0;
			count2   <= 0;
			count3   <= 0;
			vaild_r <= 0;
			layer_w_r <= 0;
			layer_h_r <= 0;
			fl_r <= 0;

			log2w_r <= 0;
			log2h_r <= 0;
			mask_r <= 0;
        end
     	else
        	case(next_state)
        		IDLE:begin
        			temp    <= 0;
					count1   <= 0;
					count2   <= 0;
					count3   <= 0;
					vaild_r <= 0;
					layer_w_r <= 0;
					layer_h_r <= 0;
					fl_r <= 0;

					log2w_r <= 0;
					log2h_r <= 0;
					mask_r <= 0;  
        		end

                SEND_YOLO1:begin
                    $fscanf(fp_r,"%d" ,temp[15:0]);
					$fscanf(fp_r,"%d" ,temp[31:16]);
					$fscanf(fp_r,"%d" ,temp[47:32]);
					$fscanf(fp_r,"%d" ,temp[63:48]);
					$fscanf(fp_r,"%d" ,temp[79:64]);
					$fscanf(fp_r,"%d" ,temp[95:80]);
					$fscanf(fp_r,"%d" ,temp[111:96]);
					$fscanf(fp_r,"%d" ,temp[127:112]);
					$fscanf(fp_r,"%d" ,temp[143:128]);
					$fscanf(fp_r,"%d" ,temp[159:144]);
					$fscanf(fp_r,"%d" ,temp[175:160]);
					$fscanf(fp_r,"%d" ,temp[191:176]);
					$fscanf(fp_r,"%d" ,temp[207:192]);
					$fscanf(fp_r,"%d" ,temp[223:208]);
					$fscanf(fp_r,"%d" ,temp[239:224]);
					$fscanf(fp_r,"%d" ,temp[255:240]);
					$fscanf(fp_r,"%d" ,temp[271:256]);
					$fscanf(fp_r,"%d" ,temp[287:272]);
					$fscanf(fp_r,"%d" ,temp[303:288]);
					$fscanf(fp_r,"%d" ,temp[319:304]);
					$fscanf(fp_r,"%d" ,temp[335:320]);
					$fscanf(fp_r,"%d" ,temp[351:336]);
					$fscanf(fp_r,"%d" ,temp[367:352]);
					$fscanf(fp_r,"%d" ,temp[383:368]);
					$fscanf(fp_r,"%d" ,temp[399:384]);
					$fscanf(fp_r,"%d" ,temp[415:400]);
					$fscanf(fp_r,"%d" ,temp[431:416]);
					$fscanf(fp_r,"%d" ,temp[447:432]);
					$fscanf(fp_r,"%d" ,temp[463:448]);
					$fscanf(fp_r,"%d" ,temp[479:464]);
					$fscanf(fp_r,"%d" ,temp[495:480]);
					$fscanf(fp_r,"%d" ,temp[511:496]);
					count1   <= count1 + 1;
					vaild_r <= 1;
                end

                WAIT_DELY:begin
                    count1   <= 0;
					vaild_r <= 0;
					count2   <= count2 + 1;
                end

        		SEND_YOLO2:begin
                    count2          <= 0;
                    $fscanf(fp_r1,"%d" ,temp[15:0]);
					$fscanf(fp_r1,"%d" ,temp[31:16]);
					$fscanf(fp_r1,"%d" ,temp[47:32]);
					$fscanf(fp_r1,"%d" ,temp[63:48]);
					$fscanf(fp_r1,"%d" ,temp[79:64]);
					$fscanf(fp_r1,"%d" ,temp[95:80]);
					$fscanf(fp_r1,"%d" ,temp[111:96]);
					$fscanf(fp_r1,"%d" ,temp[127:112]);
					$fscanf(fp_r1,"%d" ,temp[143:128]);
					$fscanf(fp_r1,"%d" ,temp[159:144]);
					$fscanf(fp_r1,"%d" ,temp[175:160]);
					$fscanf(fp_r1,"%d" ,temp[191:176]);
					$fscanf(fp_r1,"%d" ,temp[207:192]);
					$fscanf(fp_r1,"%d" ,temp[223:208]);
					$fscanf(fp_r1,"%d" ,temp[239:224]);
					$fscanf(fp_r1,"%d" ,temp[255:240]);
					$fscanf(fp_r1,"%d" ,temp[271:256]);
					$fscanf(fp_r1,"%d" ,temp[287:272]);
					$fscanf(fp_r1,"%d" ,temp[303:288]);
					$fscanf(fp_r1,"%d" ,temp[319:304]);
					$fscanf(fp_r1,"%d" ,temp[335:320]);
					$fscanf(fp_r1,"%d" ,temp[351:336]);
					$fscanf(fp_r1,"%d" ,temp[367:352]);
					$fscanf(fp_r1,"%d" ,temp[383:368]);
					$fscanf(fp_r1,"%d" ,temp[399:384]);
					$fscanf(fp_r1,"%d" ,temp[415:400]);
					$fscanf(fp_r1,"%d" ,temp[431:416]);
					$fscanf(fp_r1,"%d" ,temp[447:432]);
					$fscanf(fp_r1,"%d" ,temp[463:448]);
					$fscanf(fp_r1,"%d" ,temp[479:464]);
					$fscanf(fp_r1,"%d" ,temp[495:480]);
					$fscanf(fp_r1,"%d" ,temp[511:496]);
					count3   <= count3 + 1;
					vaild_r <= 1;
        		end 

        		NOP:begin
        			count3 <= 0;
        			vaild_r <= 0;
        		end
                default:begin
               
                end
        	endcase    
    end 	

// always @(posedge clk) begin
// 	if (sys_rst) begin
// 		temp    <= 0;
// 		count   <= 0;
// 		vaild_r <= 0;
// 		layer_w_r <= 0;
// 		layer_h_r <= 0;
// 		fl_r <= 0;

// 		log2w_r <= 0;
// 		log2h_r <= 0;
// 		mask_r <= 0;
// 	end
// 	else begin
// 		if (count < 128) begin
// 			$fscanf(fp_r,"%d" ,temp[15:0]);
// 			$fscanf(fp_r,"%d" ,temp[31:16]);
// 			$fscanf(fp_r,"%d" ,temp[47:32]);
// 			$fscanf(fp_r,"%d" ,temp[63:48]);
// 			$fscanf(fp_r,"%d" ,temp[79:64]);
// 			$fscanf(fp_r,"%d" ,temp[95:80]);
// 			$fscanf(fp_r,"%d" ,temp[111:96]);
// 			$fscanf(fp_r,"%d" ,temp[127:112]);
// 			$fscanf(fp_r,"%d" ,temp[143:128]);
// 			$fscanf(fp_r,"%d" ,temp[159:144]);
// 			$fscanf(fp_r,"%d" ,temp[175:160]);
// 			$fscanf(fp_r,"%d" ,temp[191:176]);
// 			$fscanf(fp_r,"%d" ,temp[207:192]);
// 			$fscanf(fp_r,"%d" ,temp[223:208]);
// 			$fscanf(fp_r,"%d" ,temp[239:224]);
// 			$fscanf(fp_r,"%d" ,temp[255:240]);
// 			$fscanf(fp_r,"%d" ,temp[271:256]);
// 			$fscanf(fp_r,"%d" ,temp[287:272]);
// 			$fscanf(fp_r,"%d" ,temp[303:288]);
// 			$fscanf(fp_r,"%d" ,temp[319:304]);
// 			$fscanf(fp_r,"%d" ,temp[335:320]);
// 			$fscanf(fp_r,"%d" ,temp[351:336]);
// 			$fscanf(fp_r,"%d" ,temp[367:352]);
// 			$fscanf(fp_r,"%d" ,temp[383:368]);
// 			$fscanf(fp_r,"%d" ,temp[399:384]);
// 			$fscanf(fp_r,"%d" ,temp[415:400]);
// 			$fscanf(fp_r,"%d" ,temp[431:416]);
// 			$fscanf(fp_r,"%d" ,temp[447:432]);
// 			$fscanf(fp_r,"%d" ,temp[463:448]);
// 			$fscanf(fp_r,"%d" ,temp[479:464]);
// 			$fscanf(fp_r,"%d" ,temp[495:480]);
// 			$fscanf(fp_r,"%d" ,temp[511:496]);
// 			count   <= count + 1;
// 			vaild_r <= 1;
// 			layer_w_r <= 8;
// 			layer_h_r <= 8;
// 			fl_r <= 10;

// 			log2w_r <= 3;
// 			log2h_r <= 3;
// 			mask_r <= 1;
// 		end
// 		else begin
// 			vaild_r <= 0;
// 			$fclose(fp_r);
// 		end
// 	end
// end
wire [95:0]  final_det;
wire		 final_det_vaild;
always @(posedge clk) begin
	if (final_det_vaild) begin
		$fwrite(fp_w,"%d %d %d %d", final_det[15:0],final_det[31:16],final_det[47:32],final_det[63:48]);
	    $fwrite(fp_w,"\n");
	end
	// if (det2_vaild) begin
	// 	$fwrite(fp_w,"%d %d %d %d",det2[15:0],det2[31:16],det2[47:32],det2[63:48]);
	//     $fwrite(fp_w,"\n");
	// end
	// if (det3_vaild) begin
	// 	$fwrite(fp_w,"%d %d %d %d",det3[15:0],det3[31:16],det3[47:32],det3[63:48]);
	//     $fwrite(fp_w,"\n");
	// end
end
assign  idata = temp;
assign  vaild = vaild_r;

wire [191:0] 			biases;
assign biases = {16'd68,16'd77,16'd48,16'd39,16'd25,16'd28,16'd26,16'd15,16'd13,16'd24,16'd21,16'd11};
// assign layer_w =  layer_w_r;
// assign layer_h =  layer_h_r;
// assign fl      =  fl_r;
// assign log2w   =  log2w_r;
// assign log2h   =  log2h_r;
// assign mask    =  mask_r;

yolo_layer_top uut_yolo_layer_top(
	.clk(clk),
	.rst(sys_rst),
	.conv_data(idata),
	.conv_data_valid(vaild),
	.biases(biases),
	.post_fl(12),
	.threshold(2048),
	.final_det(final_det),
	.final_det_vaild(final_det_vaild)

	// .det1(det1),
	// .det2(det2),
	// //.det3(det3),

	// .det1_vaild(det1_vaild),
	// .det2_vaild(det2_vaild)
	//.det3_vaild(det3_vaild)
);

  

endmodule