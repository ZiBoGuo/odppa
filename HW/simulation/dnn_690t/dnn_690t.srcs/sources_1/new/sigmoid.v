`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xidian University
// Engineer: Zibo Guo
// 
// Create Date: 2023/06/28 09:23:07
// Design Name: Post processing of YOLO
// Module Name: sigmoid
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

(*use_dsp48="yes"*)

module sigmoid(
	input                		clk, 
	input                		rst,
	input signed [15:0]         idata,//-32767-32767
	input                		idata_vaild,
	output [15:0]		        odata,//0~4096
	output               		odata_vaild

    );
	//reg [3:0]                   piecewise; //(-8,8) 共16个分段
	reg                         flag;
	reg signed [15:0]           idata_reg; 
	reg                         idata_vaild_reg;
	reg [15:0]					odata_reg;

	reg signed [15:0]           a;
	reg signed [15:0]           b; 
	reg signed [15:0]           c;

	always @(posedge clk) begin
	 	if (rst) begin
	 		//piecewise  <= 0;
	 		flag       <= 0;
	 		a          <= 0;
	 		b          <= 0;
	 		c          <= 0;
	 		idata_reg  <= 0;	
	 	end
	 	else if (idata_vaild) begin
	 		if (idata <= -28672) begin
	 			//piecewise <= 0;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= 0;
	 			b         <= 0;
	 			c         <= 4096;
	 		end
	 		if (idata > -28672 && idata <= -24576) begin
	 			//piecewise <= 1;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -3;
	 			b         <= 46;
	 			c         <= 3917;
	 		end
	 		if (idata > -24576 && idata <= -20480) begin
	 			//piecewise <= 2;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -8;
	 			b         <= 109;
	 			c         <= 3731;
	 		end
	 		if (idata > -20480 && idata <= -16384) begin
	 			//piecewise <= 3;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -22;
	 			b         <= 244;
	 			c         <= 3397;
	 		end
	 		if (idata > -16384 && idata <= -12288) begin
	 			//piecewise <= 4;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -55;
	 			b         <= 508;
	 			c         <= 2878;
	 		end
	 		if (idata > -12288 && idata <= -8192) begin
	 			//piecewise <= 5;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -122;
	 			b         <= 902;
	 			c         <= 2292;
	 		end
	 		if (idata > -8192 && idata <= -4096) begin
	 			//piecewise <= 6;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -191;
	 			b         <= 1186;
	 			c         <= 1999;
	 		end
	 		if (idata > -4096 && idata <= 0) begin
	 			//piecewise <= 7;
	 			flag      <= 0;
	 			idata_reg <= -idata;
	 			a         <= -113;
	 			b         <= 1066;
	 			c         <= 2044;
	 		end
	 		if (idata > 0 && idata <= 4096) begin
	 			//piecewise <= 8;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -113;
	 			b         <= 1066;
	 			c         <= 2044;
	 		end
	 		if (idata > 4096 && idata <= 8192) begin
	 			//piecewise <= 9;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -191;
	 			b         <= 1186;
	 			c         <= 1999;
	 		end
	 		if (idata > 8192 && idata <= 12288) begin
	 			//piecewise <= 10;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -122;
	 			b         <= 902;
	 			c         <= 2292;
	 		end
	 		if (idata > 12288 && idata <= 16384) begin
	 			//piecewise <= 11;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -55;
	 			b         <= 508;
	 			c         <= 2878;
	 		end
	 		if (idata > 16384 && idata <= 20480) begin
	 			//piecewise <= 12;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -22;
	 			b         <= 244;
	 			c         <= 3397;
	 		end
	 		if (idata > 20480 && idata <= 24576) begin
	 			//piecewise <= 13;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -8;
	 			b         <= 109;
	 			c         <= 3731;
	 		end
	 		if (idata > 24576 && idata <= 28672) begin
	 			//piecewise <= 14;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= -3;
	 			b         <= 46;
	 			c         <= 3917;
	 		end
	 		if (idata > 28672) begin
	 			//piecewise <= 15;
	 			flag      <= 1;
	 			idata_reg <= idata;
	 			a         <= 0;
	 			b         <= 0;
	 			c         <= 4096;
	 		end
	 	end
	end 

	reg signed [31:0]     ax;
	reg signed [31:0]     bx;
	reg signed [15:0]     x_d;
	reg signed [15:0]     c_d;
	reg signed [15:0]     bxc;
	reg signed [31:0]     axx;

	reg                   flag_d1;
	reg                   flag_d2;
	reg                   flag_d3;
	reg 				  idata_vaild_reg_d1;
	reg 				  idata_vaild_reg_d2;
	reg 				  idata_vaild_reg_d3;
	//reg 				  idata_vaild_reg_d4;

	always @(posedge clk) begin
		if (rst) begin
			x_d         <= 0;
			c_d         <= 0;
			flag_d1		<= 0;
			flag_d2		<= 0;
			flag_d3		<= 0;
			idata_vaild_reg    <= 0;
			idata_vaild_reg_d1 <= 0;
			idata_vaild_reg_d2 <= 0;
			idata_vaild_reg_d3 <= 0;
			//idata_vaild_reg_d4 <= 0;
		end
		else begin
			c_d         <= c;
			x_d         <= idata_reg;
			flag_d1     <= flag;
			flag_d2     <= flag_d1;
			flag_d3     <= flag_d2;
			idata_vaild_reg    <= idata_vaild;
			idata_vaild_reg_d1 <= idata_vaild_reg;
			idata_vaild_reg_d2 <= idata_vaild_reg_d1;
			idata_vaild_reg_d3 <= idata_vaild_reg_d2;
			//idata_vaild_reg_d4 <= idata_vaild_reg_d3;
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			ax <= 0;
			bx <= 0;	
		end
		else begin
			ax <= (a * idata_reg) >>> 12;
			bx <= (b * idata_reg) >>> 12;
		end
	end	

	always @(posedge clk) begin
		if (rst) begin
			bxc <= 0;
			axx <= 0;
		end
		else begin
			axx  <= (ax * x_d) >>> 12;
			bxc  <= bx + c_d; 
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			odata_reg <= 0;
		end
		else begin
			odata_reg <= axx + bxc;
		end
	end
	


	assign odata = (flag_d3 == 1)? odata_reg : 4096 - odata_reg;
	assign odata_vaild = idata_vaild_reg_d3;
endmodule
