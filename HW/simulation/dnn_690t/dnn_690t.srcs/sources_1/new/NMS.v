`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/11 10:40:38
// Design Name: 
// Module Name: NMS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module NMS(
	input                  clk,
	input                  rst,
	input [223:0]          det1,
	input [223:0]		   det2,
	input                  pr_done,

	output                 pr_done_ack,
	output[95:0]           final_det,
	output                 final_det_vaild,
	input                  det1_vaild,
	input                  det2_vaild
    );
	
	reg					   pr_done_ack_r;
	reg                    final_det_vaild_r;
	reg [95:0]			   final_det_r;

	assign final_det = final_det_r;
	assign final_det_vaild = final_det_vaild_r;
	assign pr_done_ack = pr_done_ack_r;
	wire                   fifo1_rd;
	wire           		   fifo1_empty;
	wire [95:0]			   box_1;

	wire                   fifo2_rd;
	wire           		   fifo2_empty;
	wire [95:0]			   box_2;

	reg                    fifo1_rd_r;
	reg                    fifo2_rd_r;
	reg                    select_fifo;

	reg[47:0] 			idata_vaild_r;
    reg[47:0] 			state_r;

    reg[47:0] 			flag_r;

    wire[47:0] 			idata_vaild;
    wire[47:0] 			state;

    wire[47:0] 			del;
    wire[47:0] 			ins;

    reg[47:0] 			del_r;
    reg[47:0] 			ins_r;

    wire[47:0]          state1_vaild;
    wire[47:0]			state0_done;

    reg [15:0]			count;
	reg [1:0]           fifo_delay_cnt;
	reg [7:0]           delay_cnt;
    assign idata_vaild = idata_vaild_r;
    assign state = state_r;

	wire [95: 0]   			    odata[47:0];
    reg[15:0]			a_w;
	reg[15:0]        	a_h;
	reg[15:0]        	a_x;
	reg[15:0]        	a_y;
	reg[15:0]        	a_cls;
	reg[15:0]        	a_cls_c;

	wire[15:0]			a_w_w;
	wire[15:0]        	a_h_w;
	wire[15:0]        	a_x_w;
	wire[15:0]        	a_y_w;
	wire[15:0]        	a_cls_w;
	wire[15:0]        	a_cls_c_w;

	assign a_w_w = a_w;
	assign a_h_w = a_h;
	assign a_x_w = a_x;
	assign a_y_w = a_y;
	assign a_cls_w = a_cls;
	assign a_cls_c_w =a_cls_c;

	assign fifo1_rd = fifo1_rd_r;
	assign fifo2_rd = fifo2_rd_r;

	localparam IDLE 				=  0;
	localparam RD_FIFO              =  1;
	localparam INIT            		=  2;
	localparam WAIT_INIT            =  3;
	localparam READ_FIFO            =  4;
	localparam FIFO_DELAY           =  5;
	localparam IOU                  =  6;
	localparam UPDATE_ARRAY1        =  7;
	localparam DELETE               =  8;
	localparam UPDATE_ARRAY2        =  9;
	localparam OUT_DET    		    =  10;
	localparam RES_TOP    		    =  11;

	reg[4:0]    current_state,next_state;
	
    always @(posedge clk) begin
    	if (rst) begin
    		current_state <= IDLE;
    	end
    	else begin
    		current_state <= next_state;
    	end
    end

    always @(*) begin
    	next_state = IDLE;
    	case(current_state)
    		IDLE:begin
    			if (!fifo1_empty || !fifo2_empty) 
    				next_state = RD_FIFO; 
    			else 
    				next_state = IDLE;
    		end

    		RD_FIFO:begin
    			if(fifo_delay_cnt == 2)
    				next_state = INIT;
    			else 
    				next_state = RD_FIFO;
    		end

    		INIT:begin
    			next_state = WAIT_INIT;
    		end

    		WAIT_INIT:begin
    			if (state0_done[0]) 
    				next_state = READ_FIFO;
    			else 
    				next_state = WAIT_INIT;
    		end

    		READ_FIFO:begin
    			if (pr_done && fifo2_empty && fifo1_empty) begin
    				next_state = OUT_DET;
    			end
    			else begin
    				if (!fifo1_empty || !fifo2_empty)
    					next_state = FIFO_DELAY;
    				else 
    					next_state = READ_FIFO;
    			end	
    		end

    		FIFO_DELAY:begin
    			if(fifo_delay_cnt == 2)
    				next_state = IOU;
    			else 
    				next_state = FIFO_DELAY;
    		end

    		IOU:begin
    			next_state = UPDATE_ARRAY1;
    		end
    		UPDATE_ARRAY1:begin
    			if (delay_cnt == 8) begin
    				next_state = DELETE;
    			end
    			else begin
    				next_state = UPDATE_ARRAY1;
    			end
    		end
    		DELETE:begin
    			next_state = UPDATE_ARRAY2;
    		end
    		UPDATE_ARRAY2:begin
    			if (delay_cnt == 2) begin
    				next_state = READ_FIFO;
    			end
    			else begin
    				next_state = UPDATE_ARRAY2;
    			end
    		end

    		OUT_DET:begin
    			if (flag_r == 48'b0) begin
    				next_state = RES_TOP;
    			end
    			else begin
    				next_state = OUT_DET;
    			end
    		end

    		RES_TOP:begin
    			next_state = IDLE;
    		end

    		default:begin
                next_state = IDLE;
            end
    	endcase
    end
	always @(posedge clk) begin
    	if (rst) begin
    		idata_vaild_r <= 0;
			state_r <= 0;
			a_w <= 0;
			a_h <= 0;
			a_x <= 0;
			a_y <= 0;
			a_cls <= 0;
			a_cls_c <= 0;
			count   <= 0;
			fifo1_rd_r  <= 0;
			fifo2_rd_r  <= 0;
			fifo_delay_cnt <= 0;
			flag_r <= 0;
			delay_cnt <= 0;
			del_r <= 48'b0;
			ins_r <= 48'b0;
			final_det_vaild_r <= 0;
			final_det_r       <= 0;
			pr_done_ack_r     <= 0;
    	end
    	else begin
    		case(next_state)
    			IDLE:begin
    				idata_vaild_r <= 0;
					state_r <= 0;
					a_w <= 0;
					a_h <= 0;
					a_x <= 0;
					a_y <= 0;
					a_cls <= 0;
					a_cls_c <= 0;
					select_fifo <= 0;
					count       <= 0;
					fifo1_rd_r  <= 0;
					fifo2_rd_r  <= 0;
					fifo_delay_cnt <= 0;
					flag_r <= 0;
					delay_cnt <= 0;
					del_r <= 0;
					ins_r <= 0;
					final_det_vaild_r <= 0;
					final_det_r       <= 0;
					pr_done_ack_r     <= 0;
    			end
    			RD_FIFO:begin
    				if (fifo_delay_cnt == 0) begin
    					if (!fifo1_empty) begin
    					fifo1_rd_r  <= 1;
    					select_fifo <= 0;
    					end
    					else begin
    						if (!fifo2_empty) begin
    							fifo2_rd_r  <= 1;
    							select_fifo <= 1;
    						end
    					end
    					fifo_delay_cnt <= fifo_delay_cnt + 1;
    				end
    				else begin
    					fifo2_rd_r  <= 0;
    					fifo1_rd_r  <= 0;
    					fifo_delay_cnt <= fifo_delay_cnt + 1;
    				end
    			end
    			INIT:begin
    				fifo_delay_cnt <= 0;
    				if (select_fifo == 0) begin
						a_x 	 	   <= box_1[15:0];
						a_y 	 	   <= box_1[31:16];
						a_w      	   <= box_1[47:32];
						a_h      	   <= box_1[63:48];
						a_cls    	   <= box_1[79:64];
						a_cls_c  	   <= box_1[95:80];
						idata_vaild_r[0] <= 1;
						state_r[0]	   <= 0; //更新pe中的参数
						count <= 1;
						flag_r[0]<=1;
    				end
    				else begin
						a_x 	 	   <= box_2[15:0];
						a_y 	       <= box_2[31:16];
						a_w            <= box_2[47:32];
						a_h            <= box_2[63:48];
						a_cls          <= box_2[79:64];
						a_cls_c        <= box_2[95:80];
						idata_vaild_r[0] <= 1;
						state_r[0]	   <= 0; //更新pe中的参数
						count <= 1;
						flag_r[0]<=1;
    				end
    			end
    			WAIT_INIT:begin
    				idata_vaild_r[0] <= 0; 
    			end
    			READ_FIFO:begin
    				fifo_delay_cnt <= 0; 
    				delay_cnt      <= 0;
    			end
    			FIFO_DELAY:begin
    				if (fifo_delay_cnt == 0) begin
    					if (!fifo1_empty) begin
    					fifo1_rd_r  <= 1;
    					select_fifo <= 0;
    					end
    					else begin
    						if (!fifo2_empty) begin
    							fifo2_rd_r  <= 1;
    							select_fifo <= 1;
    						end
    					end
    					fifo_delay_cnt <= fifo_delay_cnt + 1;
    				end
    				else begin
    					fifo2_rd_r  <= 0;
    					fifo1_rd_r  <= 0;
    					fifo_delay_cnt <= fifo_delay_cnt + 1;
    				end
    			end
    			IOU:begin
    				fifo_delay_cnt <= 0;
    				if (select_fifo == 0) begin
						a_x 	 	   <= box_1[15:0];
						a_y 	 	   <= box_1[31:16];
						a_w      	   <= box_1[47:32];
						a_h      	   <= box_1[63:48];
						a_cls    	   <= box_1[79:64];
						a_cls_c  	   <= box_1[95:80];
    				end
    				else begin
						a_x 	 	   <= box_2[15:0];
						a_y 	       <= box_2[31:16];
						a_w            <= box_2[47:32];
						a_h            <= box_2[63:48];
						a_cls          <= box_2[79:64];
						a_cls_c        <= box_2[95:80];
						
    				end
    				if (flag_r[0]) begin
    					idata_vaild_r[0] <= 1;
						state_r[0]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[0] <= 0;
						state_r[0]	     <= 0;
    				end
    				if (flag_r[1]) begin
    					idata_vaild_r[1] <= 1;
						state_r[1]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[1] <= 0;
						state_r[1]	     <= 0; 
    				end
    				if (flag_r[2]) begin
    					idata_vaild_r[2] <= 1;
						state_r[2]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[2] <= 0;
						state_r[2]	     <= 0;
    				end
    				if (flag_r[3]) begin
    					idata_vaild_r[3] <= 1;
						state_r[3]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[3] <= 0;
						state_r[3]	     <= 0;
    				end
    				if (flag_r[4]) begin
    					idata_vaild_r[4] <= 1;
						state_r[4]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[4] <= 0;
						state_r[4]	     <= 0;
    				end
    				if (flag_r[5]) begin
    					idata_vaild_r[5] <= 1;
						state_r[5]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[5] <= 0;
						state_r[5]	     <= 0;
    				end
    				if (flag_r[6]) begin
    					idata_vaild_r[6] <= 1;
						state_r[6]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[6] <= 0;
						state_r[6]	     <= 0;
    				end
    				if (flag_r[7]) begin
    					idata_vaild_r[7] <= 1;
						state_r[7]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[7] <= 0;
						state_r[7]	     <= 0;
    				end
    				if (flag_r[8]) begin
    					idata_vaild_r[8] <= 1;
						state_r[8]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[8] <= 0;
						state_r[8]	     <= 0;
    				end
    				if (flag_r[9]) begin
    					idata_vaild_r[9] <= 1;
						state_r[9]	     <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[9] <= 0;
						state_r[9]	     <= 0;
    				end
    				if (flag_r[10]) begin
    					idata_vaild_r[10] <= 1;
						state_r[10]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[10] <= 0;
						state_r[10]	      <= 0;
    				end
    				if (flag_r[11]) begin
    					idata_vaild_r[11] <= 1;
						state_r[11]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[11] <= 0;
						state_r[11]	      <= 0; 
    				end
    				if (flag_r[12]) begin
    					idata_vaild_r[12] <= 1;
						state_r[12]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[12] <= 0;
						state_r[12]	      <= 0;
    				end
    				if (flag_r[13]) begin
    					idata_vaild_r[13] <= 1;
						state_r[13]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[13] <= 0;
						state_r[13]	      <= 0;
    				end
    				if (flag_r[14]) begin
    					idata_vaild_r[14] <= 1;
						state_r[14]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[14] <= 0;
						state_r[14]	      <= 0;
    				end
    				if (flag_r[5]) begin
    					idata_vaild_r[15] <= 1;
						state_r[15]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[15] <= 0;
						state_r[15]	      <= 0;
    				end
    				if (flag_r[16]) begin
    					idata_vaild_r[16] <= 1;
						state_r[16]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[16] <= 0;
						state_r[16]	      <= 0;
    				end
    				if (flag_r[17]) begin
    					idata_vaild_r[17] <= 1;
						state_r[17]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[17] <= 0;
						state_r[17]	      <= 0;
    				end
    				if (flag_r[18]) begin
    					idata_vaild_r[18] <= 1;
						state_r[18]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[18] <= 0;
						state_r[18]	      <= 0;
    				end
    				if (flag_r[19]) begin
    					idata_vaild_r[19] <= 1;
						state_r[19]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[19] <= 0;
						state_r[19]	      <= 0;
    				end
    				if (flag_r[20]) begin
    					idata_vaild_r[20] <= 1;
						state_r[20]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[20] <= 0;
						state_r[20]	      <= 0;
    				end
    				if (flag_r[21]) begin
    					idata_vaild_r[21] <= 1;
						state_r[21]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[21] <= 0;
						state_r[21]	      <= 0; 
    				end
    				if (flag_r[22]) begin
    					idata_vaild_r[22] <= 1;
						state_r[22]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[22] <= 0;
						state_r[22]	      <= 0;
    				end
    				if (flag_r[23]) begin
    					idata_vaild_r[23] <= 1;
						state_r[23]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[23] <= 0;
						state_r[23]	      <= 0;
    				end
    				if (flag_r[24]) begin
    					idata_vaild_r[24] <= 1;
						state_r[24]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[24] <= 0;
						state_r[24]	      <= 0;
    				end
    				if (flag_r[25]) begin
    					idata_vaild_r[25] <= 1;
						state_r[25]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[25] <= 0;
						state_r[25]	      <= 0;
    				end
    				if (flag_r[26]) begin
    					idata_vaild_r[26] <= 1;
						state_r[26]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[26] <= 0;
						state_r[26]	      <= 0;
    				end
    				if (flag_r[27]) begin
    					idata_vaild_r[27] <= 1;
						state_r[27]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[27] <= 0;
						state_r[27]	      <= 0;
    				end
    				if (flag_r[28]) begin
    					idata_vaild_r[28] <= 1;
						state_r[28]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[28] <= 0;
						state_r[28]	      <= 0;
    				end
    				if (flag_r[29]) begin
    					idata_vaild_r[29] <= 1;
						state_r[29]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[29] <= 0;
						state_r[29]	      <= 0;
    				end
    				if (flag_r[30]) begin
    					idata_vaild_r[30] <= 1;
						state_r[30]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[30] <= 0;
						state_r[30]	      <= 0;
    				end
    				if (flag_r[31]) begin
    					idata_vaild_r[31] <= 1;
						state_r[31]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[31] <= 0;
						state_r[31]	      <= 0; 
    				end
    				if (flag_r[32]) begin
    					idata_vaild_r[32] <= 1;
						state_r[32]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[32] <= 0;
						state_r[32]	      <= 0;
    				end
    				if (flag_r[33]) begin
    					idata_vaild_r[33] <= 1;
						state_r[33]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[33] <= 0;
						state_r[33]	      <= 0;
    				end
    				if (flag_r[34]) begin
    					idata_vaild_r[34] <= 1;
						state_r[34]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[34] <= 0;
						state_r[34]	      <= 0;
    				end
    				if (flag_r[35]) begin
    					idata_vaild_r[35] <= 1;
						state_r[35]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[35] <= 0;
						state_r[35]	      <= 0;
    				end
    				if (flag_r[36]) begin
    					idata_vaild_r[36] <= 1;
						state_r[36]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[36] <= 0;
						state_r[36]	      <= 0;
    				end
    				if (flag_r[37]) begin
    					idata_vaild_r[37] <= 1;
						state_r[37]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[37] <= 0;
						state_r[37]	      <= 0;
    				end
    				if (flag_r[38]) begin
    					idata_vaild_r[38] <= 1;
						state_r[38]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[38] <= 0;
						state_r[38]	      <= 0;
    				end 
    				if (flag_r[39]) begin
    					idata_vaild_r[39] <= 1;
						state_r[39]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[39] <= 0;
						state_r[39]	      <= 0;
    				end
    				if (flag_r[40]) begin
    					idata_vaild_r[40] <= 1;
						state_r[40]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[40] <= 0;
						state_r[40]	      <= 0;
    				end
    				if (flag_r[41]) begin
    					idata_vaild_r[41] <= 1;
						state_r[41]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[41] <= 0;
						state_r[41]	      <= 0; 
    				end
    				if (flag_r[42]) begin
    					idata_vaild_r[42] <= 1;
						state_r[42]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[42] <= 0;
						state_r[42]	      <= 0;
    				end
    				if (flag_r[43]) begin
    					idata_vaild_r[43] <= 1;
						state_r[43]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[43] <= 0;
						state_r[43]	      <= 0;
    				end
    				if (flag_r[44]) begin
    					idata_vaild_r[44] <= 1;
						state_r[44]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[44] <= 0;
						state_r[44]	      <= 0;
    				end
    				if (flag_r[45]) begin
    					idata_vaild_r[45] <= 1;
						state_r[45]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[45] <= 0;
						state_r[45]	      <= 0;
    				end
    				if (flag_r[46]) begin
    					idata_vaild_r[46] <= 1;
						state_r[46]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[46] <= 0;
						state_r[46]	      <= 0;
    				end
    				if (flag_r[47]) begin
    					idata_vaild_r[47] <= 1;
						state_r[47]	      <= 1; //判断IOU
    				end
    				else begin
    					idata_vaild_r[47] <= 0;
						state_r[47]	      <= 0;
    				end
    			end
    			UPDATE_ARRAY1:begin       //接收更新信息
    				idata_vaild_r <= 0;
    				if (state1_vaild[0]||state1_vaild[1]||state1_vaild[2]||state1_vaild[3]||state1_vaild[4]||state1_vaild[5]||state1_vaild[6]||state1_vaild[7]||state1_vaild[8]||state1_vaild[9]||
    					state1_vaild[10]||state1_vaild[11]||state1_vaild[12]||state1_vaild[13]||state1_vaild[14]||state1_vaild[15]||state1_vaild[16]||state1_vaild[17]||state1_vaild[18]||state1_vaild[19]||
    					state1_vaild[20]||state1_vaild[21]||state1_vaild[22]||state1_vaild[23]||state1_vaild[24]||state1_vaild[25]||state1_vaild[26]||state1_vaild[27]||state1_vaild[28]||state1_vaild[29]||
    					state1_vaild[30]||state1_vaild[31]||state1_vaild[32]||state1_vaild[33]||state1_vaild[34]||state1_vaild[35]||state1_vaild[36]||state1_vaild[37]||state1_vaild[38]||state1_vaild[39]||
    					state1_vaild[40]||state1_vaild[41]||state1_vaild[42]||state1_vaild[43]||state1_vaild[44]||state1_vaild[45]||state1_vaild[46]||state1_vaild[47]) begin
    					if (flag_r[0]) begin
    						ins_r[0] <= ins[0];
    						del_r[0] <= del[0];
    					end
    					else begin
    						ins_r[0] <= 1;
    						del_r[0] <= 0;
    					end
    					if (flag_r[1]) begin
    						ins_r[1] <= ins[1];
    						del_r[1] <= del[1];
    					end
    					else begin
    						ins_r[1] <= 1;
    						del_r[1] <= 0;
    					end
    					if (flag_r[2]) begin
    						ins_r[2] <= ins[2];
    						del_r[2] <= del[2];
    					end
    					else begin
    						ins_r[2] <= 1;
    						del_r[2] <= 0;
    					end
    					if (flag_r[3]) begin
    						ins_r[3] <= ins[3];
    						del_r[3] <= del[3];
    					end
    					else begin
    						ins_r[3] <= 1;
    						del_r[3] <= 0;
    					end
    					if (flag_r[4]) begin
    						ins_r[4] <= ins[4];
    						del_r[4] <= del[4];
    					end
    					else begin
    						ins_r[4] <= 1;
    						del_r[4] <= 0;
    					end
    					if (flag_r[5]) begin
    						ins_r[5] <= ins[5];
    						del_r[5] <= del[5];
    					end
    					else begin
    						ins_r[5] <= 1;
    						del_r[5] <= 0;
    					end
    					if (flag_r[6]) begin
    						ins_r[6] <= ins[6];
    						del_r[6] <= del[6];
    					end
    					else begin
    						ins_r[6] <= 1;
    						del_r[6] <= 0;
    					end
    					if (flag_r[7]) begin
    						ins_r[7] <= ins[7];
    						del_r[7] <= del[7];
    					end
    					else begin
    						ins_r[7] <= 1;
    						del_r[7] <= 0;
    					end
    					if (flag_r[8]) begin
    						ins_r[8] <= ins[8];
    						del_r[8] <= del[8];
    					end
    					else begin
    						ins_r[8] <= 1;
    						del_r[8] <= 0;
    					end
    					if (flag_r[9]) begin
    						ins_r[9] <= ins[9];
    						del_r[9] <= del[9];
    					end
    					else begin
    						ins_r[9] <= 1;
    						del_r[9] <= 0;
    					end
    					if (flag_r[10]) begin
    						ins_r[10] <= ins[10];
    						del_r[10] <= del[10];
    					end
    					else begin
    						ins_r[10] <= 1;
    						del_r[10] <= 0;
    					end
    					if (flag_r[11]) begin
    						ins_r[11] <= ins[11];
    						del_r[11] <= del[11];
    					end
    					else begin
    						ins_r[11] <= 1;
    						del_r[11] <= 0;
    					end
    					if (flag_r[12]) begin
    						ins_r[12] <= ins[12];
    						del_r[12] <= del[12];
    					end
    					else begin
    						ins_r[12] <= 1;
    						del_r[12] <= 0;
    					end
    					if (flag_r[13]) begin
    						ins_r[13] <= ins[13];
    						del_r[13] <= del[13];
    					end
    					else begin
    						ins_r[13] <= 1;
    						del_r[13] <= 0;
    					end
    					if (flag_r[14]) begin
    						ins_r[14] <= ins[14];
    						del_r[14] <= del[14];
    					end
    					else begin
    						ins_r[14] <= 1;
    						del_r[14] <= 0;
    					end
    					if (flag_r[15]) begin
    						ins_r[15] <= ins[15];
    						del_r[15] <= del[15];
    					end
    					else begin
    						ins_r[15] <= 1;
    						del_r[15] <= 0;
    					end
    					if (flag_r[16]) begin
    						ins_r[16] <= ins[16];
    						del_r[16] <= del[16];
    					end
    					else begin
    						ins_r[16] <= 1;
    						del_r[16] <= 0;
    					end
    					if (flag_r[17]) begin
    						ins_r[17] <= ins[17];
    						del_r[17] <= del[17];
    					end
    					else begin
    						ins_r[17] <= 1;
    						del_r[17] <= 0;
    					end
    					if (flag_r[18]) begin
    						ins_r[18] <= ins[18];
    						del_r[18] <= del[18];
    					end
    					else begin
    						ins_r[18] <= 1;
    						del_r[18] <= 0;
    					end
    					if (flag_r[19]) begin
    						ins_r[19] <= ins[19];
    						del_r[19] <= del[19];
    					end
    					else begin
    						ins_r[19] <= 1;
    						del_r[19] <= 0;
    					end
    					if (flag_r[20]) begin
    						ins_r[20] <= ins[20];
    						del_r[20] <= del[20];
    					end
    					else begin
    						ins_r[20] <= 1;
    						del_r[20] <= 0;
    					end
    					if (flag_r[21]) begin
    						ins_r[21] <= ins[21];
    						del_r[21] <= del[21];
    					end
    					else begin
    						ins_r[21] <= 1;
    						del_r[21] <= 0;
    					end
    					if (flag_r[22]) begin
    						ins_r[22] <= ins[22];
    						del_r[22] <= del[22];
    					end
    					else begin
    						ins_r[22] <= 1;
    						del_r[22] <= 0;
    					end
    					if (flag_r[23]) begin
    						ins_r[23] <= ins[23];
    						del_r[23] <= del[23];
    					end
    					else begin
    						ins_r[23] <= 1;
    						del_r[23] <= 0;
    					end
    					if (flag_r[24]) begin
    						ins_r[24] <= ins[24];
    						del_r[24] <= del[24];
    					end
    					else begin
    						ins_r[24] <= 1;
    						del_r[24] <= 0;
    					end
    					if (flag_r[25]) begin
    						ins_r[25] <= ins[25];
    						del_r[25] <= del[25];
    					end
    					else begin
    						ins_r[25] <= 1;
    						del_r[25] <= 0;
    					end
    					if (flag_r[26]) begin
    						ins_r[26] <= ins[26];
    						del_r[26] <= del[26];
    					end
    					else begin
    						ins_r[26] <= 1;
    						del_r[26] <= 0;
    					end
    					if (flag_r[27]) begin
    						ins_r[27] <= ins[27];
    						del_r[27] <= del[27];
    					end
    					else begin
    						ins_r[27] <= 1;
    						del_r[27] <= 0;
    					end
    					if (flag_r[28]) begin
    						ins_r[28] <= ins[28];
    						del_r[28] <= del[28];
    					end
    					else begin
    						ins_r[28] <= 1;
    						del_r[28] <= 0;
    					end
    					if (flag_r[29]) begin
    						ins_r[29] <= ins[29];
    						del_r[29] <= del[29];
    					end
    					else begin
    						ins_r[29] <= 1;
    						del_r[29] <= 0;
    					end
    					if (flag_r[30]) begin
    						ins_r[30] <= ins[30];
    						del_r[30] <= del[30];
    					end
    					else begin
    						ins_r[30] <= 1;
    						del_r[30] <= 0;
    					end
    					if (flag_r[31]) begin
    						ins_r[31] <= ins[31];
    						del_r[31] <= del[31];
    					end
    					else begin
    						ins_r[31] <= 1;
    						del_r[31] <= 0;
    					end
    					if (flag_r[32]) begin
    						ins_r[32] <= ins[32];
    						del_r[32] <= del[32];
    					end
    					else begin
    						ins_r[32] <= 1;
    						del_r[32] <= 0;
    					end
    					if (flag_r[33]) begin
    						ins_r[33] <= ins[33];
    						del_r[33] <= del[33];
    					end
    					else begin
    						ins_r[33] <= 1;
    						del_r[33] <= 0;
    					end
    					if (flag_r[34]) begin
    						ins_r[34] <= ins[34];
    						del_r[34] <= del[34];
    					end
    					else begin
    						ins_r[34] <= 1;
    						del_r[34] <= 0;
    					end
    					if (flag_r[35]) begin
    						ins_r[35] <= ins[35];
    						del_r[35] <= del[35];
    					end
    					else begin
    						ins_r[35] <= 1;
    						del_r[35] <= 0;
    					end
    					if (flag_r[36]) begin
    						ins_r[36] <= ins[36];
    						del_r[36] <= del[36];
    					end
    					else begin
    						ins_r[36] <= 1;
    						del_r[36] <= 0;
    					end
    					if (flag_r[37]) begin
    						ins_r[37] <= ins[37];
    						del_r[37] <= del[37];
    					end
    					else begin
    						ins_r[37] <= 1;
    						del_r[37] <= 0;
    					end
    					if (flag_r[38]) begin
    						ins_r[38] <= ins[38];
    						del_r[38] <= del[38];
    					end
    					else begin
    						ins_r[38] <= 1;
    						del_r[38] <= 0;
    					end
    					if (flag_r[39]) begin
    						ins_r[39] <= ins[39];
    						del_r[39] <= del[39];
    					end
    					else begin
    						ins_r[39] <= 1;
    						del_r[39] <= 0;
    					end
    					if (flag_r[40]) begin
    						ins_r[40] <= ins[40];
    						del_r[40] <= del[40];
    					end
    					else begin
    						ins_r[40] <= 1;
    						del_r[40] <= 0;
    					end
    					if (flag_r[41]) begin
    						ins_r[41] <= ins[41];
    						del_r[41] <= del[41];
    					end
    					else begin
    						ins_r[41] <= 1;
    						del_r[41] <= 0;
    					end
    					if (flag_r[42]) begin
    						ins_r[42] <= ins[42];
    						del_r[42] <= del[42];
    					end
    					else begin
    						ins_r[42] <= 1;
    						del_r[42] <= 0;
    					end
    					if (flag_r[43]) begin
    						ins_r[43] <= ins[43];
    						del_r[43] <= del[43];
    					end
    					else begin
    						ins_r[43] <= 1;
    						del_r[43] <= 0;
    					end
    					if (flag_r[44]) begin
    						ins_r[44] <= ins[44];
    						del_r[44] <= del[44];
    					end
    					else begin
    						ins_r[44] <= 1;
    						del_r[44] <= 0;
    					end
    					if (flag_r[45]) begin
    						ins_r[45] <= ins[45];
    						del_r[45] <= del[45];
    					end
    					else begin
    						ins_r[45] <= 1;
    						del_r[45] <= 0;
    					end
    					if (flag_r[46]) begin
    						ins_r[46] <= ins[46];
    						del_r[46] <= del[46];
    					end
    					else begin
    						ins_r[46] <= 1;
    						del_r[46] <= 0;
    					end
    					if (flag_r[47]) begin
    						ins_r[47] <= ins[47];
    						del_r[47] <= del[47];
    					end
    					else begin
    						ins_r[47] <= 1;
    						del_r[47] <= 0;
    					end
    				end
    				delay_cnt <= delay_cnt + 1;
    			end
    			DELETE:begin
    				delay_cnt <= 0;
    				if (del_r[0]) begin
    					flag_r[0] <= 0;
    				end
    				if (del_r[1]) begin
    					flag_r[1] <= 0;
    				end
    				if (del_r[2]) begin
    					flag_r[2] <= 0;
    				end
    				if (del_r[3]) begin
    					flag_r[3] <= 0;
    				end
    				if (del_r[4]) begin
    					flag_r[4] <= 0;
    				end
    				if (del_r[5]) begin
    					flag_r[5] <= 0;
    				end
    				if (del_r[6]) begin
    					flag_r[6] <= 0;
    				end
    				if (del_r[7]) begin
    					flag_r[7] <= 0;
    				end
    				if (del_r[8]) begin
    					flag_r[8] <= 0;
    				end
    				if (del_r[9]) begin
    					flag_r[9] <= 0;
    				end
    				if (del_r[10]) begin
    					flag_r[10] <= 0;
    				end
    				if (del_r[11]) begin
    					flag_r[11] <= 0;
    				end
    				if (del_r[12]) begin
    					flag_r[12] <= 0;
    				end
    				if (del_r[13]) begin
    					flag_r[13] <= 0;
    				end
    				if (del_r[14]) begin
    					flag_r[14] <= 0;
    				end
    				if (del_r[15]) begin
    					flag_r[15] <= 0;
    				end
    				if (del_r[16]) begin
    					flag_r[16] <= 0;
    				end
    				if (del_r[17]) begin
    					flag_r[17] <= 0;
    				end
    				if (del_r[18]) begin
    					flag_r[18] <= 0;
    				end
    				if (del_r[19]) begin
    					flag_r[19] <= 0;
    				end
    				if (del_r[20]) begin
    					flag_r[20] <= 0;
    				end
    				if (del_r[21]) begin
    					flag_r[21] <= 0;
    				end
    				if (del_r[22]) begin
    					flag_r[22] <= 0;
    				end
    				if (del_r[23]) begin
    					flag_r[23] <= 0;
    				end
    				if (del_r[24]) begin
    					flag_r[24] <= 0;
    				end
    				if (del_r[25]) begin
    					flag_r[25] <= 0;
    				end
    				if (del_r[26]) begin
    					flag_r[26] <= 0;
    				end
    				if (del_r[27]) begin
    					flag_r[27] <= 0;
    				end
    				if (del_r[28]) begin
    					flag_r[28] <= 0;
    				end
    				if (del_r[29]) begin
    					flag_r[29] <= 0;
    				end
    				if (del_r[30]) begin
    					flag_r[30] <= 0;
    				end
    				if (del_r[31]) begin
    					flag_r[31] <= 0;
    				end
    				if (del_r[32]) begin
    					flag_r[32] <= 0;
    				end
    				if (del_r[33]) begin
    					flag_r[33] <= 0;
    				end
    				if (del_r[34]) begin
    					flag_r[34] <= 0;
    				end
    				if (del_r[35]) begin
    					flag_r[35] <= 0;
    				end
    				if (del_r[36]) begin
    					flag_r[36] <= 0;
    				end
    				if (del_r[37]) begin
    					flag_r[37] <= 0;
    				end
    				if (del_r[38]) begin
    					flag_r[38] <= 0;
    				end
    				if (del_r[39]) begin
    					flag_r[39] <= 0;
    				end
    				if (del_r[40]) begin
    					flag_r[40] <= 0;
    				end
    				if (del_r[41]) begin
    					flag_r[41] <= 0;
    				end
    				if (del_r[42]) begin
    					flag_r[42] <= 0;
    				end
    				if (del_r[43]) begin
    					flag_r[43] <= 0;
    				end
    				if (del_r[44]) begin
    					flag_r[44] <= 0;
    				end
    				if (del_r[45]) begin
    					flag_r[45] <= 0;
    				end
    				if (del_r[46]) begin
    					flag_r[46] <= 0;
    				end
    				if (del_r[47]) begin
    					flag_r[47] <= 0;
    				end
    			end
    			UPDATE_ARRAY2:begin   //发出更新信息
    				if (delay_cnt == 0) begin
    					if (ins_r == 48'b111111111111111111111111111111111111111111111111) begin
    						if (!flag_r[0]) begin
    							idata_vaild_r[0] <= 1;
								state_r[0]	     <= 0; //更新pe中的参数
								count            <= count + 1;
								flag_r[0]        <= 1;
    						end
    						else if (!flag_r[1]) begin
							    idata_vaild_r[1] <= 1;
							    state_r[1]       <= 0;
							    count            <= count + 1;
							    flag_r[1]        <= 1;
							end
							else if (!flag_r[2]) begin
							    idata_vaild_r[2] <= 1;
							    state_r[2]        <= 0;
							    count             <= count + 1;
							    flag_r[2]        <= 1;
							end
							else if (!flag_r[3]) begin
							    idata_vaild_r[3] <= 1;
							    state_r[3]        <= 0;
							    count             <= count + 1;
							    flag_r[3]        <= 1;
							end
							else if (!flag_r[4]) begin
							    idata_vaild_r[4] <= 1;
							    state_r[4]        <= 0;
							    count             <= count + 1;
							    flag_r[4]        <= 1;
							end
							else if (!flag_r[5]) begin
							    idata_vaild_r[5] <= 1;
							    state_r[5]        <= 0;
							    count             <= count + 1;
							    flag_r[5]        <= 1;
							end
							else if (!flag_r[6]) begin
							    idata_vaild_r[6] <= 1;
							    state_r[6]        <= 0;
							    count             <= count + 1;
							    flag_r[6]        <= 1;
							end
							else if (!flag_r[7]) begin
							    idata_vaild_r[7] <= 1;
							    state_r[7]        <= 0;
							    count             <= count + 1;
							    flag_r[7]        <= 1;
							end
							else if (!flag_r[8]) begin
							    idata_vaild_r[8] <= 1;
							    state_r[8]        <= 0;
							    count             <= count + 1;
							    flag_r[8]        <= 1;
							end
							else if (!flag_r[9]) begin
							    idata_vaild_r[9] <= 1;
							    state_r[9]        <= 0;
							    count             <= count + 1;
							    flag_r[9]        <= 1;
							end
							else if (!flag_r[10]) begin
							    idata_vaild_r[10] <= 1;
							    state_r[10]       <= 0;
							    count             <= count + 1;
							    flag_r[10]        <= 1;
							end
							else if (!flag_r[11]) begin
							    idata_vaild_r[11] <= 1;
							    state_r[11]       <= 0;
							    count             <= count + 1;
							    flag_r[11]        <= 1;
							end
							else if (!flag_r[12]) begin
							    idata_vaild_r[12] <= 1;
							    state_r[12]       <= 0;
							    count             <= count + 1;
							    flag_r[12]        <= 1;
							end
							else if (!flag_r[13]) begin
							    idata_vaild_r[13] <= 1;
							    state_r[13]       <= 0;
							    count             <= count + 1;
							    flag_r[13]        <= 1;
							end
							else if (!flag_r[14]) begin
							    idata_vaild_r[14] <= 1;
							    state_r[14]       <= 0;
							    count             <= count + 1;
							    flag_r[14]        <= 1;
							end
							else if (!flag_r[15]) begin
							    idata_vaild_r[15] <= 1;
							    state_r[15]       <= 0;
							    count             <= count + 1;
							    flag_r[15]        <= 1;
							end
							else if (!flag_r[16]) begin
							    idata_vaild_r[16] <= 1;
							    state_r[16]       <= 0;
							    count             <= count + 1;
							    flag_r[16]        <= 1;
							end
							else if (!flag_r[17]) begin
							    idata_vaild_r[17] <= 1;
							    state_r[17]       <= 0;
							    count             <= count + 1;
							    flag_r[17]        <= 1;
							end
							else if (!flag_r[18]) begin
							    idata_vaild_r[18] <= 1;
							    state_r[18]       <= 0;
							    count             <= count + 1;
							    flag_r[18]        <= 1;
							end
							else if (!flag_r[19]) begin
							    idata_vaild_r[19] <= 1;
							    state_r[19]       <= 0;
							    count             <= count + 1;
							    flag_r[19]        <= 1;
							end
							else if (!flag_r[20]) begin
							    idata_vaild_r[20] <= 1;
							    state_r[20]       <= 0;
							    count             <= count + 1;
							    flag_r[20]        <= 1;
							end
							else if (!flag_r[21]) begin
							    idata_vaild_r[21] <= 1;
							    state_r[21]       <= 0;
							    count             <= count + 1;
							    flag_r[21]        <= 1;
							end
							else if (!flag_r[22]) begin
							    idata_vaild_r[22] <= 1;
							    state_r[22]       <= 0;
							    count             <= count + 1;
							    flag_r[22]        <= 1;
							end
							else if (!flag_r[23]) begin
							    idata_vaild_r[23] <= 1;
							    state_r[23]       <= 0;
							    count             <= count + 1;
							    flag_r[23]        <= 1;
							end
							else if (!flag_r[24]) begin
							    idata_vaild_r[24] <= 1;
							    state_r[24]       <= 0;
							    count             <= count + 1;
							    flag_r[24]        <= 1;
							end
							else if (!flag_r[25]) begin
							    idata_vaild_r[25] <= 1;
							    state_r[25]       <= 0;
							    count             <= count + 1;
							    flag_r[25]        <= 1;
							end
							else if (!flag_r[26]) begin
							    idata_vaild_r[26] <= 1;
							    state_r[26]       <= 0;
							    count             <= count + 1;
							    flag_r[26]        <= 1;
							end
							else if (!flag_r[27]) begin
							    idata_vaild_r[27] <= 1;
							    state_r[27]       <= 0;
							    count             <= count + 1;
							    flag_r[27]        <= 1;
							end
							else if (!flag_r[28]) begin
							    idata_vaild_r[28] <= 1;
							    state_r[28]       <= 0;
							    count             <= count + 1;
							    flag_r[28]        <= 1;
							end
							else if (!flag_r[29]) begin
							    idata_vaild_r[29] <= 1;
							    state_r[29]       <= 0;
							    count             <= count + 1;
							    flag_r[29]        <= 1;
							end
							else if (!flag_r[30]) begin
							    idata_vaild_r[30] <= 1;
							    state_r[30]       <= 0;
							    count             <= count + 1;
							    flag_r[30]        <= 1;
							end
							else if (!flag_r[31]) begin
							    idata_vaild_r[31] <= 1;
							    state_r[31]       <= 0;
							    count             <= count + 1;
							    flag_r[31]        <= 1;
							end
							else if (!flag_r[32]) begin
							    idata_vaild_r[32] <= 1;
							    state_r[32]       <= 0;
							    count             <= count + 1;
							    flag_r[32]        <= 1;
							end
							else if (!flag_r[33]) begin
							    idata_vaild_r[33] <= 1;
							    state_r[33]       <= 0;
							    count             <= count + 1;
							    flag_r[33]        <= 1;
							end
							else if (!flag_r[34]) begin
							    idata_vaild_r[34] <= 1;
							    state_r[34]       <= 0;
							    count             <= count + 1;
							    flag_r[34]        <= 1;
							end
							else if (!flag_r[35]) begin
							    idata_vaild_r[35] <= 1;
							    state_r[35]       <= 0;
							    count             <= count + 1;
							    flag_r[35]        <= 1;
							end
							else if (!flag_r[36]) begin
							    idata_vaild_r[36] <= 1;
							    state_r[36]       <= 0;
							    count             <= count + 1;
							    flag_r[36]        <= 1;
							end
							else if (!flag_r[37]) begin
							    idata_vaild_r[37] <= 1;
							    state_r[37]       <= 0;
							    count             <= count + 1;
							    flag_r[37]        <= 1;
							end
							else if (!flag_r[38]) begin
							    idata_vaild_r[38] <= 1;
							    state_r[38]       <= 0;
							    count             <= count + 1;
							    flag_r[38]        <= 1;
							end
							else if (!flag_r[39]) begin
							    idata_vaild_r[39] <= 1;
							    state_r[39]       <= 0;
							    count             <= count + 1;
							    flag_r[39]        <= 1;
							end
							else if (!flag_r[40]) begin
							    idata_vaild_r[40] <= 1;
							    state_r[40]       <= 0;
							    count             <= count + 1;
							    flag_r[40]        <= 1;
							end
							else if (!flag_r[41]) begin
							    idata_vaild_r[41] <= 1;
							    state_r[41]       <= 0;
							    count             <= count + 1;
							    flag_r[41]        <= 1;
							end
							else if (!flag_r[42]) begin
							    idata_vaild_r[42] <= 1;
							    state_r[42]       <= 0;
							    count             <= count + 1;
							    flag_r[42]        <= 1;
							end
							else if (!flag_r[43]) begin
							    idata_vaild_r[43] <= 1;
							    state_r[43]       <= 0;
							    count             <= count + 1;
							    flag_r[43]        <= 1;
							end
							else if (!flag_r[44]) begin
							    idata_vaild_r[44] <= 1;
							    state_r[44]       <= 0;
							    count             <= count + 1;
							    flag_r[44]        <= 1;
							end
							else if (!flag_r[45]) begin
							    idata_vaild_r[45] <= 1;
							    state_r[45]       <= 0;
							    count             <= count + 1;
							    flag_r[45]        <= 1;
							end
							else if (!flag_r[46]) begin
							    idata_vaild_r[46] <= 1;
							    state_r[46]       <= 0;
							    count             <= count + 1;
							    flag_r[46]        <= 1;
							end
							else if (!flag_r[47]) begin
							    idata_vaild_r[47] <= 1;
							    state_r[47]       <= 0;
							    count             <= count + 1;
							    flag_r[47]        <= 1;
							end
    					end
    					else begin
    						idata_vaild_r <= 0;
    						ins_r         <= 0;
    					end
    				end
    				else begin
    					idata_vaild_r <= 0;
    					ins_r         <= 0;
    				end
    				delay_cnt <= delay_cnt + 1;
    			end
    			OUT_DET:begin
    				if (flag_r[0]) begin
    					final_det_r       <= odata[0];
    					final_det_vaild_r <= 1;
    					flag_r[0]         <= 0;
    				end
					else if (flag_r[1]) begin
					    final_det_r       <= odata[1];
					    final_det_vaild_r <= 1;
					    flag_r[1]        <= 0;
					end
					else if (flag_r[2]) begin
					    final_det_r       <= odata[2];
					    final_det_vaild_r <= 1;
					    flag_r[2]        <= 0;
					end
					else if (flag_r[3]) begin
					    final_det_r       <= odata[3];
					    final_det_vaild_r <= 1;
					    flag_r[3]        <= 0;
					end
					else if (flag_r[4]) begin
					    final_det_r       <= odata[4];
					    final_det_vaild_r <= 1;
					    flag_r[4]        <= 0;
					end
					else if (flag_r[5]) begin
					    final_det_r       <= odata[5];
					    final_det_vaild_r <= 1;
					    flag_r[5]        <= 0;
					end
					else if (flag_r[6]) begin
					    final_det_r       <= odata[6];
					    final_det_vaild_r <= 1;
					    flag_r[6]        <= 0;
					end
					else if (flag_r[7]) begin
					    final_det_r       <= odata[7];
					    final_det_vaild_r <= 1;
					    flag_r[7]        <= 0;
					end
					else if (flag_r[8]) begin
					    final_det_r       <= odata[8];
					    final_det_vaild_r <= 1;
					    flag_r[8]        <= 0;
					end
					else if (flag_r[9]) begin
					    final_det_r       <= odata[9];
					    final_det_vaild_r <= 1;
					    flag_r[9]        <= 0;
					end
					else if (flag_r[10]) begin
					    final_det_r       <= odata[10];
					    final_det_vaild_r <= 1;
					    flag_r[10]        <= 0;
					end
					else if (flag_r[11]) begin
					    final_det_r       <= odata[11];
					    final_det_vaild_r <= 1;
					    flag_r[11]        <= 0;
					end
					else if (flag_r[12]) begin
					    final_det_r       <= odata[12];
					    final_det_vaild_r <= 1;
					    flag_r[12]        <= 0;
					end
					else if (flag_r[13]) begin
					    final_det_r       <= odata[13];
					    final_det_vaild_r <= 1;
					    flag_r[13]        <= 0;
					end
					else if (flag_r[14]) begin
					    final_det_r       <= odata[14];
					    final_det_vaild_r <= 1;
					    flag_r[14]        <= 0;
					end
					else if (flag_r[15]) begin
					    final_det_r       <= odata[15];
					    final_det_vaild_r <= 1;
					    flag_r[15]        <= 0;
					end
					else if (flag_r[16]) begin
					    final_det_r       <= odata[16];
					    final_det_vaild_r <= 1;
					    flag_r[16]        <= 0;
					end
					else if (flag_r[17]) begin
					    final_det_r       <= odata[17];
					    final_det_vaild_r <= 1;
					    flag_r[17]        <= 0;
					end
					else if (flag_r[18]) begin
					    final_det_r       <= odata[18];
					    final_det_vaild_r <= 1;
					    flag_r[18]        <= 0;
					end
					else if (flag_r[19]) begin
					    final_det_r       <= odata[19];
					    final_det_vaild_r <= 1;
					    flag_r[19]        <= 0;
					end
					else if (flag_r[20]) begin
					    final_det_r       <= odata[20];
					    final_det_vaild_r <= 1;
					    flag_r[20]        <= 0;
					end
					else if (flag_r[21]) begin
					    final_det_r       <= odata[21];
					    final_det_vaild_r <= 1;
					    flag_r[21]        <= 0;
					end
					else if (flag_r[22]) begin
					    final_det_r       <= odata[22];
					    final_det_vaild_r <= 1;
					    flag_r[22]        <= 0;
					end
					else if (flag_r[23]) begin
					    final_det_r       <= odata[23];
					    final_det_vaild_r <= 1;
					    flag_r[23]        <= 0;
					end
					else if (flag_r[24]) begin
					    final_det_r       <= odata[24];
					    final_det_vaild_r <= 1;
					    flag_r[24]        <= 0;
					end
					else if (flag_r[25]) begin
					    final_det_r       <= odata[25];
					    final_det_vaild_r <= 1;
					    flag_r[25]        <= 0;
					end
					else if (flag_r[26]) begin
					    final_det_r       <= odata[26];
					    final_det_vaild_r <= 1;
					    flag_r[26]        <= 0;
					end
					else if (flag_r[27]) begin
					    final_det_r       <= odata[27];
					    final_det_vaild_r <= 1;
					    flag_r[27]        <= 0;
					end
					else if (flag_r[28]) begin
					    final_det_r       <= odata[28];
					    final_det_vaild_r <= 1;
					    flag_r[28]        <= 0;
					end
					else if (flag_r[29]) begin
					    final_det_r       <= odata[29];
					    final_det_vaild_r <= 1;
					    flag_r[29]        <= 0;
					end
					else if (flag_r[30]) begin
					    final_det_r       <= odata[30];
					    final_det_vaild_r <= 1;
					    flag_r[30]        <= 0;
					end
					else if (flag_r[31]) begin
					    final_det_r       <= odata[31];
					    final_det_vaild_r <= 1;
					    flag_r[31]        <= 0;
					end
					else if (flag_r[32]) begin
					    final_det_r       <= odata[32];
					    final_det_vaild_r <= 1;
					    flag_r[32]        <= 0;
					end
					else if (flag_r[33]) begin
					    final_det_r       <= odata[33];
					    final_det_vaild_r <= 1;
					    flag_r[33]        <= 0;
					end
					else if (flag_r[34]) begin
					    final_det_r       <= odata[34];
					    final_det_vaild_r <= 1;
					    flag_r[34]        <= 0;
					end
					else if (flag_r[35]) begin
					    final_det_r       <= odata[35];
					    final_det_vaild_r <= 1;
					    flag_r[35]        <= 0;
					end
					else if (flag_r[36]) begin
					    final_det_r       <= odata[36];
					    final_det_vaild_r <= 1;
					    flag_r[36]        <= 0;
					end
					else if (flag_r[37]) begin
					    final_det_r       <= odata[37];
					    final_det_vaild_r <= 1;
					    flag_r[37]        <= 0;
					end
					else if (flag_r[38]) begin
					    final_det_r       <= odata[38];
					    final_det_vaild_r <= 1;
					    flag_r[38]        <= 0;
					end
					else if (flag_r[39]) begin
					    final_det_r       <= odata[39];
					    final_det_vaild_r <= 1;
					    flag_r[39]        <= 0;
					end
					else if (flag_r[40]) begin
					    final_det_r       <= odata[40];
					    final_det_vaild_r <= 1;
					    flag_r[40]        <= 0;
					end
					else if (flag_r[41]) begin
					    final_det_r       <= odata[41];
					    final_det_vaild_r <= 1;
					    flag_r[41]        <= 0;
					end
					else if (flag_r[42]) begin
					    final_det_r       <= odata[42];
					    final_det_vaild_r <= 1;
					    flag_r[42]        <= 0;
					end
					else if (flag_r[43]) begin
					    final_det_r       <= odata[43];
					    final_det_vaild_r <= 1;
					    flag_r[43]        <= 0;
					end
					else if (flag_r[44]) begin
					    final_det_r       <= odata[44];
					    final_det_vaild_r <= 1;
					    flag_r[44]        <= 0;
					end
					else if (flag_r[45]) begin
					    final_det_r       <= odata[45];
					    final_det_vaild_r <= 1;
					    flag_r[45]        <= 0;
					end
					else if (flag_r[46]) begin
					    final_det_r       <= odata[46];
					    final_det_vaild_r <= 1;
					    flag_r[46]        <= 0;
					end
					else if (flag_r[47]) begin
					    final_det_r       <= odata[47];
					    final_det_vaild_r <= 1;
					    flag_r[47]        <= 0;
					end
					else begin
						final_det_vaild_r <= 0;
						final_det_r       <= 0;
					end
    			end
    			RES_TOP:begin
    				final_det_vaild_r     <= 0;
    				pr_done_ack_r         <= 1; 
    			end
    			default:begin
    				pr_done_ack_r <= 0;
    				idata_vaild_r <= 0;
					state_r <= 0;
					a_w <= 0;
					a_h <= 0;
					a_x <= 0;
					a_y <= 0;
					a_cls <= 0;
					a_cls_c <= 0;
					select_fifo <= 0;
					count       <= 0;
					fifo1_rd_r  <= 0;
					fifo2_rd_r  <= 0;
					fifo_delay_cnt <= 0;
					flag_r <= 0;
					delay_cnt <= 0;
					del_r <= 0;
					ins_r <= 0;
					final_det_vaild_r <= 0;
					final_det_r       <= 0;
    			end
    		endcase
    	end
    end

    

 	genvar i;//公用
    generate
    	for( i = 0; i < 48 ; i = i + 1)begin: gen_pe_unit_LOOP
    		sp_pe_unit uut_pe_unit(
    			.clk(clk),
				.rst(rst),
				.state(state[i]),
				.idata_vaild(idata_vaild[i]),
				.threshold(16'd58),
				.a_w(a_w_w),
				.a_h(a_h_w),
				.a_x(a_x_w),
				.a_y(a_y_w),
				.a_cls(a_cls_w),
				.a_cls_c(a_cls_c_w),
				.del(del[i]),
				.ins(ins[i]), 
				.odata(odata[i]),
				.state1_vaild(state1_vaild[i]),
				.state0_done(state0_done[i])
    		);
    	end
    endgenerate
	output_buffer uut_output_buffer(
		.clk(clk),
		.rst(rst),
		.det1(det1),
		.det2(det2),
		.det1_vaild(det1_vaild),
		.det2_vaild(det2_vaild),
		.fifo1_rd(fifo1_rd),
		.fifo1_empty(fifo1_empty),
		.box_1(box_1),
	    .fifo2_rd(fifo2_rd),
		.fifo2_empty(fifo2_empty),
		.box_2(box_2)
	);


endmodule
