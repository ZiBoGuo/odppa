`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/30 20:53:03
// Design Name: 
// Module Name: read_cache_decode_pos
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


module read_cache_decode_pos(
	input                   clk,
	input                   rst,
	input [5:0]				log2w,
	input [5:0]             log2h,
	input                   mask,
	input [191:0] 			biases,
	input [5:0]             layer_w,
	input [5:0]             layer_h,

	input        			c_s_vaild1,
	input [11:0] 			index1,
	input [15:0] 			c_s1,

	input        			c_s_vaild2,
	input [11:0] 			index2,
	input [15:0] 			c_s2,

	// input        			c_s_vaild3,
	// input [11:0] 			index3,
	// input [15:0] 			c_s3,

	input [223:0]       	doutb_1,
	input [223:0]       	doutb_2,
	input [223:0]       	doutb_3,

	input                   tile,

	output [223:0]          det1,
	output [223:0]			det2,
	//output [223:0]			det3,

	output                  det1_vaild,
	output                  det2_vaild
	//output                  det3_vaild
    );
	
	reg                     c_s_vaild1_r1;
	reg                     c_s_vaild1_r2;
	reg [15:0] 			    c_s1_r1;
	reg [15:0] 			    c_s1_r2;

	reg                     c_s_vaild2_r1;
	reg                     c_s_vaild2_r2;
	reg [15:0] 			    c_s2_r1;
	reg [15:0] 			    c_s2_r2;

	// reg                     c_s_vaild3_r1;
	// reg                     c_s_vaild3_r2;
	// reg [15:0] 			    c_s3_r1;
	// reg [15:0] 			    c_s3_r2;

	

	always @(posedge clk) begin
		if (rst) begin
			c_s_vaild1_r1 <= 0;
			c_s_vaild1_r2 <= 0;
			c_s1_r1       <= 0;
			c_s1_r2       <= 0;
			c_s_vaild2_r1 <= 0;
			c_s_vaild2_r2 <= 0;
			c_s2_r1       <= 0;
			c_s2_r2       <= 0;
			// c_s_vaild3_r1 <= 0;
			// c_s_vaild3_r2 <= 0;
			// c_s3_r1       <= 0;
			// c_s3_r2       <= 0;
		end
		else begin
			c_s_vaild1_r1 <= c_s_vaild1;
			c_s_vaild1_r2 <= c_s_vaild1_r1;
			c_s1_r1       <= c_s1;
			c_s1_r2       <= c_s1_r1;

			c_s_vaild2_r1 <= c_s_vaild2;
			c_s_vaild2_r2 <= c_s_vaild2_r1;
			c_s2_r1       <= c_s2;
			c_s2_r2       <= c_s2_r1;

			// c_s_vaild3_r1 <= c_s_vaild3;
			// c_s_vaild3_r2 <= c_s_vaild3_r1;
			// c_s3_r1       <= c_s3;
			// c_s3_r2       <= c_s3_r1;
		end
	end

	wire                    cx_xy_vaild1;
	wire [23:0]             cx_xy1;
	wire [9:0]              cy1;
	wire [5:0]              cx1;

	assign cy1 = cx_xy1[17:8];
	assign cx1 = cx_xy1[5:0];

	wire                    cx_xy_vaild2;
	wire [23:0]             cx_xy2;
	wire [9:0]              cy2;
	wire [5:0]              cx2;

	assign cy2 = cx_xy2[17:8];
	assign cx2 = cx_xy2[5:0];

	// wire                    cx_xy_vaild3;
	// wire [23:0]             cx_xy3;
	// wire [9:0]              cy3;
	// wire [5:0]              cx3;

	// assign cy3 = cx_xy3[17:8];
	// assign cx3 = cx_xy3[5:0];

	wire [31:0]				b1;
	wire [31:0]				b2;
	wire [31:0]				b3;

	assign b1 = (mask == 1) ? biases[127:96] : biases[31:0];
	assign b2 = (mask == 1) ? biases[159:128] : biases[63:32];
	assign b3 = (mask == 1) ? biases[191:160] : biases[95:64];

	div_gen uut_div_gen1(
    	.aclk(clk),
    	.s_axis_divisor_tvalid(c_s_vaild1),
    	.s_axis_divisor_tdata({2'b0,layer_w}),
    	.s_axis_dividend_tvalid(c_s_vaild1),
    	.s_axis_dividend_tdata ({4'b0,index1}),
    	.m_axis_dout_tvalid(cx_xy_vaild1),
    	.m_axis_dout_tdata(cx_xy1)
  	);

  	div_gen uut_div_gen2(
    	.aclk(clk),
    	.s_axis_divisor_tvalid(c_s_vaild2),
    	.s_axis_divisor_tdata({2'b0,layer_w}),
    	.s_axis_dividend_tvalid(c_s_vaild2),
    	.s_axis_dividend_tdata ({4'b0,index2}),
    	.m_axis_dout_tvalid(cx_xy_vaild2),
    	.m_axis_dout_tdata(cx_xy2)
  	);

  	// div_gen uut_div_gen3(
   //  	.aclk(clk),
   //  	.s_axis_divisor_tvalid(c_s_vaild3),
   //  	.s_axis_divisor_tdata({2'b0,layer_w}),
   //  	.s_axis_dividend_tvalid(c_s_vaild3),
   //  	.s_axis_dividend_tdata ({4'b0,index3}),
   //  	.m_axis_dout_tvalid(cx_xy_vaild3),
   //  	.m_axis_dout_tdata(cx_xy3)
  	// );

  	wire [31:0]				u1_b;
  	wire [223:0]       	    u1_doutb;

  	assign u1_b = (tile == 0)? b1:b3;
  	assign u1_doutb = (tile == 0)? doutb_1:doutb_3;
  	decode_unit uut_decode_unit1(
  		.clk(clk),
		.rst(rst),
		.idata_vaild(cx_xy_vaild1),
		.log2w(log2w),
		.log2h(log2h),

		.biases(u1_b),
		.cy(cy1),
		.cx(cx1), 
		.confidence(c_s1_r2),
		.doutb(u1_doutb),

		.odata(det1),
		.odata_vaild(det1_vaild)
  	);

  	decode_unit uut_decode_unit2(
  		.clk(clk),
		.rst(rst),
		.idata_vaild(cx_xy_vaild2),
		.log2w(log2w),
		.log2h(log2h),

		.biases(b2),
		.cy(cy2),
		.cx(cx2), 
		.confidence(c_s2_r2),
		.doutb(doutb_2),

		.odata(det2),
		.odata_vaild(det2_vaild)
  	);

  // 	decode_unit uut_decode_unit3(
  // 		.clk(clk),
		// .rst(rst),
		// .idata_vaild(cx_xy_vaild3),
		// .log2w(log2w),
		// .log2h(log2h),

		// .biases(b3),
		// .cy(cy3),
		// .cx(cx3), 
		// .confidence(c_s3_r2),
		// .doutb(doutb_3),

		// .odata(det3),
		// .odata_vaild(det3_vaild)
  // 	);
// debug use
	// wire signed [15:0]		b1_x;
	// wire signed [15:0]		b1_y;
	// wire signed [15:0]		b1_w;
	// wire signed [15:0]		b1_h;
	// wire signed [15:0]		b1_cls1;
	// wire signed [15:0]		b1_cls2;
	// wire signed [15:0]		b1_cls3;
	// wire signed [15:0]		b1_cls4;
	// wire signed [15:0]		b1_cls5;
	// wire signed [15:0]		b1_cls6;
	// wire signed [15:0]		b1_cls7;
	// wire signed [15:0]		b1_cls8;
	// wire signed [15:0]		b1_cls9;

	// wire signed [15:0]		b2_x;
	// wire signed [15:0]		b2_y;
	// wire signed [15:0]		b2_w;
	// wire signed [15:0]		b2_h;
	// wire signed [15:0]		b2_cls1;
	// wire signed [15:0]		b2_cls2;
	// wire signed [15:0]		b2_cls3;
	// wire signed [15:0]		b2_cls4;
	// wire signed [15:0]		b2_cls5;
	// wire signed [15:0]		b2_cls6;
	// wire signed [15:0]		b2_cls7;
	// wire signed [15:0]		b2_cls8;
	// wire signed [15:0]		b2_cls9;

	// wire signed [15:0]		b3_x;
	// wire signed [15:0]		b3_y;
	// wire signed [15:0]		b3_w;
	// wire signed [15:0]		b3_h;
	// wire signed [15:0]		b3_cls1;
	// wire signed [15:0]		b3_cls2;
	// wire signed [15:0]		b3_cls3;
	// wire signed [15:0]		b3_cls4;
	// wire signed [15:0]		b3_cls5;
	// wire signed [15:0]		b3_cls6;
	// wire signed [15:0]		b3_cls7;
	// wire signed [15:0]		b3_cls8;
	// wire signed [15:0]		b3_cls9;

	// assign b1_x =    doutb_1[15:0];
	// assign b1_y =    doutb_1[31:16];
	// assign b1_w =    doutb_1[47:32];
	// assign b1_h =    doutb_1[63:48];
	// assign b1_cls1 = doutb_1[79:64];
	// assign b1_cls2 = doutb_1[95:80];
	// assign b1_cls3 = doutb_1[111:96];
	// assign b1_cls4 = doutb_1[127:112];
	// assign b1_cls5 = doutb_1[143:128];
	// assign b1_cls6 = doutb_1[159:144];
	// assign b1_cls7 = doutb_1[175:160];
	// assign b1_cls8 = doutb_1[191:176];
	// assign b1_cls9 = doutb_1[207:192];

	// assign b2_x =    doutb_2[15:0];
	// assign b2_y =    doutb_2[31:16];
	// assign b2_w =    doutb_2[47:32];
	// assign b2_h =    doutb_2[63:48];
	// assign b2_cls1 = doutb_2[79:64];
	// assign b2_cls2 = doutb_2[95:80];
	// assign b2_cls3 = doutb_2[111:96];
	// assign b2_cls4 = doutb_2[127:112];
	// assign b2_cls5 = doutb_2[143:128];
	// assign b2_cls6 = doutb_2[159:144];
	// assign b2_cls7 = doutb_2[175:160];
	// assign b2_cls8 = doutb_2[191:176];
	// assign b2_cls9 = doutb_2[207:192];

	// assign b3_x =    doutb_3[15:0];
	// assign b3_y =    doutb_3[31:16];
	// assign b3_w =    doutb_3[47:32];
	// assign b3_h =    doutb_3[63:48];
	// assign b3_cls1 = doutb_3[79:64];
	// assign b3_cls2 = doutb_3[95:80];
	// assign b3_cls3 = doutb_3[111:96];
	// assign b3_cls4 = doutb_3[127:112];
	// assign b3_cls5 = doutb_3[143:128];
	// assign b3_cls6 = doutb_3[159:144];
	// assign b3_cls7 = doutb_3[175:160];
	// assign b3_cls8 = doutb_3[191:176];
	// assign b3_cls9 = doutb_3[207:192];

endmodule
