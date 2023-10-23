`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/30 17:06:59
// Design Name: 
// Module Name: yolo_layer_top
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


module yolo_layer_top(
	input                   clk,
	input                   rst,
	input [511:0]    	    conv_data,
	input  				    conv_data_valid,

	input [191:0] 			biases,
	
	input [15:0]			post_fl,
	input [15:0]			threshold,

	output [95:0]			final_det,
	output                  final_det_vaild

	
	//output                  det3_vaild
    );
	
	wire [223:0]          	det1;
	wire [223:0]		  	det2;
	wire                  	det1_vaild;
	wire                  	det2_vaild;
	wire [511:0]            conv_data_q;
	wire                    conv_data_q_vaild;

	wire                    idata_vaild;
	wire [511:0]            idata;

	wire [5:0]              layer_w;
	wire [5:0]              layer_h;
	wire [15:0]				fl;
	wire [5:0]				log2w;
	wire [5:0]              log2h;
	wire                    mask;

	wire 					pr_done_ack;
	wire 					pr_done;

	reg [15:0]              cnt_perf;

	always @(posedge clk) begin
		if (rst) begin
			cnt_perf <= 0;
		end
		else begin
			cnt_perf <= cnt_perf + 1;
		end
	end

	postpro_FSM uut_postpro_FSM(
		.clk(clk),
		.rst(rst),
		.conv_data(conv_data),
		.conv_data_valid(conv_data_valid),

		.idata_vaild(idata_vaild),
		.idata(idata),
		.pr_done(pr_done),
		.pr_done_ack(pr_done_ack),
		.layer_w(layer_w),
		.layer_h(layer_h),
		.fl(fl),
		.log2w(log2w),
		.log2h(log2h),
		.mask(mask)
	);

	requant uut_requant(
		.clk(clk),
	    .rst(rst),
	    .conv_data(idata),
	    .conv_data_valid(idata_vaild),
	    .fl(fl),
	    .post_fl(post_fl),
	    .odata(conv_data_q),
	    .odata_vaild(conv_data_q_vaild)
	);

	position_resolution uut_position_resolution(
	    .clk(clk),
	    .rst(rst),
	    .conv_data(conv_data_q),
	    .conv_data_valid(conv_data_q_vaild),

	    .log2w(log2w),
		.log2h(log2h),
		.mask(mask),

	    .biases(biases),
	    .layer_w(layer_w),
	    .layer_h(layer_h),
	    .fl(fl),
	    .threshold(threshold),

	  	.det1(det1),
		.det2(det2),
		//.det3(det3),

		.det1_vaild(det1_vaild),
		.det2_vaild(det2_vaild)
		//.det3_vaild(det3_vaild)
	);

	NMS uut_NMS(
		.clk(clk),
		.rst(rst),
		.det1(det1),
		.det2(det2),
		.pr_done(pr_done),
		.pr_done_ack(pr_done_ack),
		.final_det(final_det),
		.final_det_vaild(final_det_vaild),
		.det1_vaild(det1_vaild),
		.det2_vaild(det2_vaild)
	);

		

endmodule
