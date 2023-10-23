`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/07 15:48:01
// Design Name: 
// Module Name: output_buffer
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


module output_buffer(
	input                  clk,
	input                  rst,
	input [223:0]          det1,
	input [223:0]		   det2,

	input                  det1_vaild,
	input                  det2_vaild,

	input                  fifo1_rd,
	output                 fifo1_empty,
	output [95:0]		   box_1,

	input                  fifo2_rd,
	output                 fifo2_empty,
	output [95:0]		   box_2


    );
	wire [31:0]            det1_cls;
	wire                   det1_cls_vaild; 

	wire [31:0]            det2_cls;
	wire                   det2_cls_vaild; 

	//reg [63:0]			   coor1_delay;
	//reg [63:0]			   coor2_delay;


	wire[95:0]			   fifo1_din;//score,cls,h,w,y,x,95~0
	//assign fifo1_din = {det1_cls,coor1_delay};

	wire[95:0]			   fifo2_din;//score,cls,h,w,y,x,95~0
	//assign fifo2_din = {det2_cls,coor2_delay};

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor1_x (
		.clk(clk),
		.rst(rst),
		.ram_din(det1[15:0]),
		.ram_dout_delay(fifo1_din[15:0])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor1_y (
		.clk(clk),
		.rst(rst),
		.ram_din(det1[31:16]),
		.ram_dout_delay(fifo1_din[31:16])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor1_w (
		.clk(clk),
		.rst(rst),
		.ram_din(det1[47:32]),
		.ram_dout_delay(fifo1_din[47:32])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor1_h (
		.clk(clk),
		.rst(rst),
		.ram_din(det1[63:48]),
		.ram_dout_delay(fifo1_din[63:48])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor2_x (
		.clk(clk),
		.rst(rst),
		.ram_din(det2[15:0]),
		.ram_dout_delay(fifo2_din[15:0])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor2_y (
		.clk(clk),
		.rst(rst),
		.ram_din(det2[31:16]),
		.ram_dout_delay(fifo2_din[31:16])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor2_w (
		.clk(clk),
		.rst(rst),
		.ram_din(det2[47:32]),
		.ram_dout_delay(fifo2_din[47:32])
	);

delay_data #(
		.DELAY_TIME(4)
		) uut_delay_shiftcache_coor2_h (
		.clk(clk),
		.rst(rst),
		.ram_din(det2[63:48]),
		.ram_dout_delay(fifo2_din[63:48])
	);


FIFO_W96_D512 uut_fifo_1(
	.clk(clk), //IN STD_LOGIC;
    .srst(rst), //IN STD_LOGIC;
    .din(fifo1_din), //IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    .wr_en(det1_cls_vaild), // IN STD_LOGIC;
    .rd_en(fifo1_rd), // IN STD_LOGIC;
    .dout(box_1), //OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    .full(), //OUT STD_LOGIC;
    .empty(fifo1_empty)// OUT STD_LOGIC
);

FIFO_W96_D512 uut_fifo_2(
	.clk(clk), //IN STD_LOGIC;
    .srst(rst), //IN STD_LOGIC;
    .din(fifo2_din), //IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    .wr_en(det2_cls_vaild), // IN STD_LOGIC;
    .rd_en(fifo2_rd), // IN STD_LOGIC;
    .dout(box_2), //OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    .full(), //OUT STD_LOGIC;
    .empty(fifo2_empty)// OUT STD_LOGIC
);

comp_tree uut_comp_tree1(
	.clk(clk),
	.rst(rst),
	.idata(det1[223:64]),
	.idata_vaild(det1_vaild),
	.odata(fifo1_din[95:64]),
	.odata_vaild(det1_cls_vaild)
	);

comp_tree uut_comp_tree2(
	.clk(clk),
	.rst(rst),
	.idata(det2[223:64]),
	.idata_vaild(det2_vaild),
	.odata(fifo2_din[95:64]),
	.odata_vaild(det2_cls_vaild)
);
	
	
endmodule
