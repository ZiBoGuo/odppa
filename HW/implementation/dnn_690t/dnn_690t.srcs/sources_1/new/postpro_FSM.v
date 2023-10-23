`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/05 09:28:41
// Design Name: 
// Module Name: postpro_FSM
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


module postpro_FSM(
	input                   clk,
	input                   rst,
	input [511:0]			conv_data,
	input  				    conv_data_valid,
    input                   pr_done_ack,

    output                  pr_done,
	output                  idata_vaild,
	output [511:0]          idata,

	output [5:0]            layer_w,
	output [5:0]            layer_h,
	output [15:0]			fl,
	output [5:0]			log2w,
	output [5:0]            log2h,
	output                  mask

    );

    reg                   pr_done_r;
	reg [15:0]			  cnt1;

	reg [5:0]             layer_w_r;
	reg [5:0]             layer_h_r;
	reg [15:0]			  fl_r;

	reg [5:0]			  log2w_r;
	reg [5:0]             log2h_r;
	reg                   mask_r;
	reg                   idata_vaild_r;
	reg [511:0]           idata_r;
	// 
	localparam IDLE 				=  0;
	localparam POS_RES1             =  1;
	//localparam WAIT                 =  2;
	localparam INIT_CNT             =  2;
	localparam POS_RES2    		    =  3;
    localparam NOP                  =  4;
    localparam NMS                  =  5;

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
    			if (conv_data_valid) 
    				next_state = POS_RES1; 
    			else 
    				next_state = IDLE;
    		end

    		POS_RES1:begin
    			if (cnt1 == 128)
    				next_state = INIT_CNT;
    			else 
    				next_state = POS_RES1;
    		end

    		// WAIT:begin
    		// 	if (cnt1 == 128 + 25)
    		// 		next_state = INIT_CNT;
    		// 	else 
    		// 		next_state = WAIT;
    		// end

    		INIT_CNT:begin
    			next_state = POS_RES2;
    		end

    		POS_RES2:begin
    			if (cnt1 == 512) 
    				next_state = NOP;
  				else 
  					next_state = POS_RES2;
    		end

    		NOP:begin
    			if (cnt1 == 512 + 25) 
    				next_state = NMS;
    			else 
    				next_state = NOP;
    		end

            NMS:begin
                if (pr_done_ack) 
                    next_state = IDLE;
                else 
                    next_state = NMS;
            end

            default:begin
                next_state = IDLE;
            end 
    	endcase
    end

    always @(posedge clk) begin
    	if (rst) begin
    		cnt1 <= 0;
    		layer_w_r <= 0;
			layer_h_r <= 0;
			fl_r <= 0;
			log2w_r <= 0;
			log2h_r <= 0;
			mask_r <= 0;
			idata_r <= 0;
			idata_vaild_r <= 0;
            pr_done_r     <= 0;
    	end
    	else begin
    		case(next_state)
    			IDLE:begin
    				cnt1          <= 0;
    				layer_w_r     <= 0;
					layer_h_r     <= 0;
					fl_r          <= 0;
					log2w_r       <= 0;
					log2h_r       <= 0;
					mask_r        <= 0;
					idata_vaild_r <= 0;
					idata_r       <= 0;
                    pr_done_r     <= 0;
    			end

    			POS_RES1:begin
    				if (conv_data_valid) begin
    					idata_r       <= conv_data;
    					idata_vaild_r <= 1;
    					cnt1 		  <= cnt1 + 1;
    					layer_w_r     <= 8;
						layer_h_r     <= 8;
						fl_r          <= 10;
						log2w_r       <= 3;
						log2h_r       <= 3;
						mask_r        <= 1;
    				end
    				else begin
    					idata_vaild_r <= 0;
    				end
    			end

    			// WAIT:begin
    			// 	if (conv_data_valid) begin
   				// 		cnt1 		  <= cnt1 + 1;
    			// 	end
    			// 	idata_vaild_r <= 0;
    			// end

    			INIT_CNT:begin
    				cnt1          <= 0;
    			end
    			POS_RES2:begin
    				if (conv_data_valid) begin
    					idata_r       <= conv_data;
    					idata_vaild_r <= 1;
    					cnt1          <= cnt1 + 1;
    					layer_w_r     <= 16;
						layer_h_r     <= 16;
						fl_r          <= 9;
						log2w_r       <= 4;
						log2h_r       <= 4;
						mask_r        <= 0;
    				end
    				else begin
    					idata_vaild_r <= 0;
    				end
    			end
    			NOP:begin
    				cnt1          <= cnt1 + 1;
    				idata_vaild_r <= 0;
    			end
                NMS:begin
                    pr_done_r         <= 1;
                end
                default:begin
                    cnt1 <= 0;
                    layer_w_r <= 0;
                    layer_h_r <= 0;
                    fl_r <= 0;
                    log2w_r <= 0;
                    log2h_r <= 0;
                    mask_r <= 0;
                    idata_r <= 0;
                    idata_vaild_r <= 0;
                    pr_done_r     <= 0;
                end
    		endcase
    	end
    end

    assign idata = idata_r;
	assign idata_vaild = idata_vaild_r;
	assign layer_w =  layer_w_r;
	assign layer_h =  layer_h_r;
	assign fl      =  fl_r;
	assign log2w   =  log2w_r;
	assign log2h   =  log2h_r;
	assign mask    =  mask_r;
    assign pr_done =  pr_done_r;
	
endmodule
