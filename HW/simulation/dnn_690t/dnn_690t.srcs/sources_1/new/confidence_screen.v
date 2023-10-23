`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/29 11:26:36
// Design Name: 
// Module Name: confidence_screen
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


module confidence_screen(
	input                     clk,
	input                     rst,
	input signed [15:0]       confidence,
	input                     conf_vaild,
	input [5:0]               layer_w,
	input [5:0]               layer_h,
	input [15:0]              threshold,
	output [11:0]             index,
	output [15:0]             confidence_s,  //0-4096
	output                    odata_vaild
    );
	
	reg [11:0]                count;

	reg                       odata_vaild_r; 
	reg [15:0]                odata_r;


	wire                      s_vaild;
	wire [15:0]               c_s;

	reg                       s_vaild_r;

	always @(posedge clk) begin
		if (rst) begin
			s_vaild_r <= 0;
		end
		else begin
			s_vaild_r <= s_vaild;
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			count <= 0;
		end
		else begin
			if (s_vaild_r && count < layer_w * layer_h - 1) begin
				count <= count + 1;
			end
			else begin
				count <= 0;
			end
		end
	end


	always @(posedge clk) begin
		if (rst) begin
			odata_vaild_r 	 <= 0;
			odata_r          <= 0;
		end
		else begin
			if (s_vaild && c_s >= threshold) begin
				odata_vaild_r <= 1;
				odata_r       <= c_s;
			end
			else begin
				odata_vaild_r <= 0;
			end
		end
	end 

	

	sigmoid uut_c_sigmoid(
		.clk(clk), 
		.rst(rst),
		.idata(confidence),//-32767-32767
		.idata_vaild(conf_vaild),
		.odata(c_s),//0~4096
		.odata_vaild(s_vaild)
	);

	assign index = count;
	assign confidence_s = odata_r;
	assign odata_vaild = odata_vaild_r;


endmodule
