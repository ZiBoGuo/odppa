`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xidian University
// Engineer: Zibo Guo
// 
// Create Date: 2023/06/28 17:39:00
// Design Name: Post processing of YOLO
// Module Name: position resolution
// Project Name: dnn_690t
// Target Devices: VC709
// Tool Versions: 2018.3
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module position_resolution(
	input                   clk,
	input                   rst,
	input [511:0]    	    conv_data,
	input  				    conv_data_valid,

	input [5:0]				log2w,
	input [5:0]             log2h,
	input                   mask,
	
	input [191:0] 			biases,
	input [5:0]             layer_w,
	input [5:0]             layer_h,
	input [15:0]			fl,
	input [15:0]			threshold,

	output [223:0]          det1,
	output [223:0]			det2,
	//output [223:0]			det3,

	output                  det1_vaild,
	output                  det2_vaild
	//output                  det3_vaild
    );


wire signed [15:0]    b1_c;
wire signed [15:0]    b2_c;
wire signed [15:0]    b3_c;

wire [6:0]        	wea_1;
wire [62:0]			addra_1;
wire [223:0]       	dina_1;

wire [6:0]        	wea_2;
wire [62:0]			addra_2;
wire [223:0]       	dina_2;

wire [6:0]        	wea_3;
wire [62:0]			addra_3;
wire [223:0]       	dina_3;


wire [223:0]       	doutb_1;
wire [223:0]       	doutb_2;
wire [223:0]       	doutb_3;

wire [11:0] 		index1;
wire        		c_s_vaild1;
wire [15:0] 		c_s1;

wire [11:0] 		index2;
wire        		c_s_vaild2;
wire [15:0] 		c_s2;

// wire [11:0] 		index3;
// wire        		c_s_vaild3;
// wire [15:0] 		c_s3;

wire                tile;


write_cache_pool uut_write_cache_pool(
	.clk(clk),
	.rst(rst),
	.conv_data(conv_data),
	.conv_data_valid(conv_data_valid),
	.layer_w(layer_w),
	.layer_h(layer_h),

	.tile(tile),

	.wea_1(wea_1),
	.addra_1(addra_1),
	.dina_1(dina_1),

	.wea_2(wea_2),
	.addra_2(addra_2),
	.dina_2(dina_2),

	.wea_3(wea_3),
	.addra_3(addra_3),
	.dina_3(dina_3),

	.b1_c_w(b1_c),
	.b2_c_w(b2_c),
	.b3_c_w(b3_c)
	);	
	 	
buffer_pool uut_box1_ram(
	.clk(clk),
	.en(1),
	.we(wea_1),
	.addra(addra_1),
	.dina(dina_1),
	.addrb(index1),
	.doutb(doutb_1)

);
buffer_pool uut_box2_ram(
	.clk(clk),
	.en(1),
	.we(wea_2),
	.addra(addra_2),
	.dina(dina_2),
	.addrb(index2),
	.doutb(doutb_2)
);
buffer_pool uut_box3_ram(
	.clk(clk),
	.en(1),
	.we(wea_3),
	.addra(addra_3),
	.dina(dina_3),
	.addrb(index1),
	.doutb(doutb_3)
);

wire signed [15:0]    su1_c;
wire 				  su1_c_vaild;

assign su1_c = (tile == 0)? b1_c : b3_c;
assign su1_c_vaild = (tile == 0)? wea_1[0] : wea_3[2];

confidence_screen uut_confidence_screen1(
	.clk(clk),
	.rst(rst),
	.confidence(su1_c),
	.conf_vaild(su1_c_vaild),
	.threshold(threshold),
	.layer_w(layer_w),
	.layer_h(layer_h),
	.index(index1),
	.confidence_s(c_s1),  //0-4096
	.odata_vaild(c_s_vaild1)
);

confidence_screen uut_confidence_screen2(
	.clk(clk),
	.rst(rst),
	.layer_w(layer_w),
	.layer_h(layer_h),
	.confidence(b2_c),
	.conf_vaild(wea_2[0]),
	.threshold(threshold),
	.index(index2),
	.confidence_s(c_s2),  //0-4096
	.odata_vaild(c_s_vaild2)
);

// confidence_screen uut_confidence_screen_box3(
// 	.clk(clk),
// 	.rst(rst),
// 	.confidence(b3_c),
// 	.conf_vaild(wea_3[2]),
// 	.threshold(threshold),
// 	.index(index3),
// 	.confidence_s(c_s3),  //0-4096
// 	.odata_vaild(c_s_vaild3)
// );

read_cache_decode_pos uut_rc_decode_pos(
	.clk(clk),
	.rst(rst),
	.log2w(log2w),
	.log2h(log2h),
	.mask(mask),
	.biases(biases),
	.layer_w(layer_w),
	.layer_h(layer_h),
	.tile(tile),

	.c_s_vaild1(c_s_vaild1),
	.index1(index1),
	.c_s1(c_s1),

	.c_s_vaild2(c_s_vaild2),
	.index2(index2),
	.c_s2(c_s2),

	// .c_s_vaild3(c_s_vaild3),
	// .index3(index3),
	// .c_s3(c_s3),

	.doutb_1(doutb_1),
	.doutb_2(doutb_2),
	.doutb_3(doutb_3),

	.det1(det1),
	.det2(det2),
	//.det3(det3),

	.det1_vaild(det1_vaild),
	.det2_vaild(det2_vaild)
	//.det3_vaild(det3_vaild) 

    );

endmodule
