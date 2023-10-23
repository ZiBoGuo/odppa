`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/30 15:41:59
// Design Name: 
// Module Name: requant
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


module requant(
	input                   clk,
	input                   rst,
	input [511:0]    	    conv_data,
	input  				    conv_data_valid,
	input [15:0]			fl,
	input [15:0]			post_fl,
	output [511:0]          odata,
	output                  odata_vaild
    );
	//wire [15:0]             hhhh;
	//wire [15:0]             bbbbb;
	wire signed [15:0]      x1;
	wire signed [15:0]      x2;
	wire signed [15:0]      x3;
	wire signed [15:0]      x4;
	wire signed [15:0]      x5;
	wire signed [15:0]      x6;
	wire signed [15:0]      x7;
	wire signed [15:0]      x8;
	wire signed [15:0]      x9;
	wire signed [15:0]      x10;
	wire signed [15:0]      x11;
	wire signed [15:0]      x12;
	wire signed [15:0]      x13;
	wire signed [15:0]      x14;
	wire signed [15:0]      x15;
	wire signed [15:0]      x16;
	wire signed [15:0]      x17;
	wire signed [15:0]      x18;
	wire signed [15:0]      x19;
	wire signed [15:0]      x20;
	wire signed [15:0]      x21;
	wire signed [15:0]      x22;
	wire signed [15:0]      x23;
	wire signed [15:0]      x24;
	wire signed [15:0]      x25;
	wire signed [15:0]      x26;
	wire signed [15:0]      x27;
	wire signed [15:0]      x28;
	wire signed [15:0]      x29;
	wire signed [15:0]      x30;
	wire signed [15:0]      x31;
	wire signed [15:0]      x32;

	reg signed [15:0]       x1_r;
	reg signed [15:0]       x2_r;
	reg signed [15:0]       x3_r;
	reg signed [15:0]       x4_r;
	reg signed [15:0]       x5_r;
	reg signed [15:0]       x6_r;
	reg signed [15:0]       x7_r;
	reg signed [15:0]       x8_r;
	reg signed [15:0]       x9_r;
	reg signed [15:0]       x10_r;
	reg signed [15:0]       x11_r;
	reg signed [15:0]       x12_r;
	reg signed [15:0]       x13_r;
	reg signed [15:0]       x14_r;
	reg signed [15:0]       x15_r;
	reg signed [15:0]       x16_r;
	reg signed [15:0]       x17_r;
	reg signed [15:0]       x18_r;
	reg signed [15:0]       x19_r;
	reg signed [15:0]       x20_r;
	reg signed [15:0]       x21_r;
	reg signed [15:0]       x22_r;
	reg signed [15:0]       x23_r;
	reg signed [15:0]       x24_r;
	reg signed [15:0]       x25_r;
	reg signed [15:0]       x26_r;
	reg signed [15:0]       x27_r;
	reg signed [15:0]       x28_r;
	reg signed [15:0]       x29_r;
	reg signed [15:0]       x30_r;
	reg signed [15:0]       x31_r;
	reg signed [15:0]       x32_r;

    assign x1  = conv_data[15:0];
    assign x2  = conv_data[31:16];
    assign x3  = conv_data[47:32];
    assign x4  = conv_data[63:48];
    assign x5  = conv_data[79:64];
    assign x6  = conv_data[95:80];
    assign x7  = conv_data[111:96];
    assign x8  = conv_data[127:112];
    assign x9  = conv_data[143:128];
    assign x10 = conv_data[159:144];
    assign x11 = conv_data[175:160];
    assign x12 = conv_data[191:176];
    assign x13 = conv_data[207:192];
    assign x14 = conv_data[223:208];
    assign x15 = conv_data[239:224];
    assign x16 = conv_data[255:240];
    assign x17 = conv_data[271:256];
    assign x18 = conv_data[287:272];
    assign x19 = conv_data[303:288];
    assign x20 = conv_data[319:304];
    assign x21 = conv_data[335:320];
    assign x22 = conv_data[351:336];
    assign x23 = conv_data[367:352];
    assign x24 = conv_data[383:368];
    assign x25 = conv_data[399:384];
    assign x26 = conv_data[415:400];
    assign x27 = conv_data[431:416];
    assign x28 = conv_data[447:432];
    assign x29 = conv_data[463:448];
    assign x30 = conv_data[479:464];
    assign x31 = conv_data[495:480];
    assign x32 = conv_data[511:496];

    reg odata_vaild_r;
    always @(posedge clk) begin
    	if (rst) begin
    		x1_r    <= 0;
            x2_r    <= 0;
            x3_r    <= 0;
            x4_r    <= 0;
            x5_r    <= 0;
            x6_r    <= 0;
            x7_r    <= 0;
            x8_r    <= 0;
            x9_r    <= 0;
            x10_r   <= 0;
            x11_r   <= 0;
            x12_r   <= 0;
            x13_r   <= 0;
            x14_r   <= 0;
            x15_r   <= 0;
            x16_r   <= 0;
            x17_r   <= 0;
            x18_r   <= 0;
            x19_r   <= 0;
            x20_r   <= 0;
            x21_r   <= 0;
            x22_r   <= 0;
            x23_r   <= 0;
            x24_r   <= 0;
            x25_r   <= 0;
            x26_r   <= 0;
            x27_r   <= 0;
            x28_r   <= 0;
            x29_r   <= 0;
            x30_r   <= 0;
            x31_r   <= 0;
            x32_r   <= 0;
            odata_vaild_r <= 0;
    	end
    	else begin
    		if (conv_data_valid) begin
    			odata_vaild_r <= 1;
    			x1_r <= (x1 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x1 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x1 <<< (post_fl - fl);
            	x2_r <= (x2 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x2 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x2 <<< (post_fl - fl);
            	x3_r <= (x3 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x3 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x3 <<< (post_fl - fl);
            	x4_r <= (x4 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x4 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x4 <<< (post_fl - fl);
            	x5_r <= (x5 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x5 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x5 <<< (post_fl - fl);
            	x6_r <= (x6 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x6 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x6 <<< (post_fl - fl);
            	x7_r <= (x7 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x7 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x7 <<< (post_fl - fl);
            	x8_r <= (x8 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x8 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x8 <<< (post_fl - fl);
            	x9_r <= (x9 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x9 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x9 <<< (post_fl - fl);
            	x10_r <= (x10 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x10 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x10 <<< (post_fl - fl);
            	x11_r <= (x11 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x11 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x11 <<< (post_fl - fl);
            	x12_r <= (x12 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x12 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x12 <<< (post_fl - fl);
            	x13_r <= (x13 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x13 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x13 <<< (post_fl - fl);
            	x14_r <= (x14 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x14 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x14 <<< (post_fl - fl);
            	x15_r <= (x15 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x15 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x15 <<< (post_fl - fl);
            	x16_r <= (x16 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x16 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x16 <<< (post_fl - fl);
            	x17_r <= (x17 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x17 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x17 <<< (post_fl - fl);
            	x18_r <= (x18 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x18 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x18 <<< (post_fl - fl);
            	x19_r <= (x19 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x19 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x19 <<< (post_fl - fl);
            	x20_r <= (x20 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x20 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x20 <<< (post_fl - fl);
            	x21_r <= (x21 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x21 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x21 <<< (post_fl - fl);
            	x22_r <= (x22 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x22 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x22 <<< (post_fl - fl);
            	x23_r <= (x23 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x23 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x23 <<< (post_fl - fl);
            	x24_r <= (x24 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x24 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x24 <<< (post_fl - fl);
            	x25_r <= (x25 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x25 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x25 <<< (post_fl - fl);
            	x26_r <= (x26 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x26 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x26 <<< (post_fl - fl);
            	x27_r <= (x27 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x27 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x27 <<< (post_fl - fl);
            	x28_r <= (x28 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x28 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x28 <<< (post_fl - fl);
            	x29_r <= (x29 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x29 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x29 <<< (post_fl - fl);
            	x30_r <= (x30 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x30 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x30 <<< (post_fl - fl);
            	x31_r <= (x31 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x31 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x31 <<< (post_fl - fl);
            	x32_r <= (x32 >= (2 <<< (14 - post_fl + fl))) ? 32767 : (x32 <= -(2 <<< (14 - post_fl + fl))) ? -32767 : x32 <<< (post_fl - fl);  
    		end
    		else begin
    			odata_vaild_r <= 0;
    		end
    	end
    end
    //assign hhhh = (2 <<< (15 - post_fl + fl));
    //assign bbbbb = -(2 <<< (15 - post_fl + fl));
    assign odata_vaild = odata_vaild_r;
    assign odata = {x32_r,x31_r,x30_r,x29_r,x28_r,x27_r,x26_r,x25_r,x24_r,x23_r,x22_r,x21_r,x20_r,x19_r,x18_r,x17_r,x16_r,x15_r,x14_r,x13_r,x12_r,x11_r,x10_r,x9_r,x8_r,x7_r,x6_r,x5_r,x4_r,x3_r,x2_r,x1_r};
endmodule
