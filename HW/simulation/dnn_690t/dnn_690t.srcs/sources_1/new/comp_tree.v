`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/10 21:36:12
// Design Name: 
// Module Name: comp_tree
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


module comp_tree(
	input        		 clk,
	input        		 rst,
	input [159:0]        idata,
	input                idata_vaild,
	output [31:0]        odata,
	output				 odata_vaild
    );
	reg [15:0] 	         comp_l1[4:0];
	reg [6:0] 	         index_l1[4:0]; 

	reg [15:0] 	         comp_l2[2:0];
	reg [6:0] 	         index_l2[2:0]; 

	reg [15:0] 	         comp_l3[1:0];
	reg [6:0] 	         index_l3[1:0]; 

	reg [15:0] 	         comp_l4;
	reg [6:0] 	         index_l4; 

	reg 				 idata_vaild_d1;
	reg 				 idata_vaild_d2;
	reg 				 idata_vaild_d3;
	reg 				 idata_vaild_d4;

	always @(posedge clk) begin
		if (rst) begin
			idata_vaild_d1  <= 0;
			idata_vaild_d2  <= 0;
			idata_vaild_d3  <= 0;
			idata_vaild_d4  <= 0;
		end
		else begin
			idata_vaild_d1 <= idata_vaild;
			idata_vaild_d2 <= idata_vaild_d1;
			idata_vaild_d3 <= idata_vaild_d2;
			idata_vaild_d4 <= idata_vaild_d3;
		end
	end

	//第一个时钟
	always @(posedge clk) begin
		if (rst) begin
			comp_l1[0] <= 0;
			index_l1[0] <= 0;
		end
		else begin
			if (idata_vaild) begin
				if (idata[15:0] >= idata[31:16]) begin
					comp_l1[0] <= idata[15:0];
					index_l1[0] <= 0;
				end
				else begin
					comp_l1[0] <= idata[31:16];
					index_l1[0] <= 1;
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l1[1] <= 0;
			index_l1[1] <= 0;
		end
		else begin
			if (idata_vaild) begin
				if (idata[47:32] >= idata[63:48]) begin
					comp_l1[1] <= idata[47:32];
					index_l1[1] <= 2;
				end
				else begin
					comp_l1[1] <= idata[63:48];
					index_l1[1] <= 3;
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l1[2] <= 0;
			index_l1[2] <= 0;
		end
		else begin
			if (idata_vaild) begin
				if (idata[79:64] >= idata[95:80]) begin
					comp_l1[2] <= idata[79:64];
					index_l1[2] <= 4;
				end
				else begin
					comp_l1[2] <= idata[95:80];
					index_l1[2] <= 5;
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l1[3] <= 0;
			index_l1[3] <= 0;
		end
		else begin
			if (idata_vaild) begin
				if (idata[111:96] >= idata[127:112]) begin
					comp_l1[3] <= idata[111:96];
					index_l1[3] <= 6;
				end
				else begin
					comp_l1[3]  <= idata[127:112];
					index_l1[3] <= 7;
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l1[4]  <= 0;
			index_l1[4] <= 0;
		end
		else begin
			if (idata_vaild) begin
				if (idata[143:128] >= idata[159:144]) begin
					comp_l1[4]  <= idata[143:128];
					index_l1[4] <= 8;
				end
				else begin
					comp_l1[4]  <= idata[159:144];
					index_l1[4] <= 9;
				end
			end
		end
	end
	///////////////////////////////////////////////////////////
	//第二个时钟
	always @(posedge clk) begin
		if (rst) begin
			comp_l2[0] <= 0;
			index_l2[0] <= 0;
		end
		else begin
			if (idata_vaild_d1) begin
				if (comp_l1[0] >= comp_l1[1]) begin
					comp_l2[0]  <= comp_l1[0];
					index_l2[0] <= index_l1[0];
				end
				else begin
					comp_l2[0]  <= comp_l1[1];
					index_l2[0] <= index_l1[1];
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l2[1] <= 0;
			index_l2[1] <= 0;
		end
		else begin
			if (idata_vaild_d1) begin
				if (comp_l1[2] >= comp_l1[3]) begin
					comp_l2[1]  <= comp_l1[2];
					index_l2[1] <= index_l1[2];
				end
				else begin
					comp_l2[1]  <= comp_l1[3];
					index_l2[1] <= index_l1[3];
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l2[2] <= 0;
			index_l2[2] <= 0;
		end
		else begin
			if (idata_vaild_d1) begin
				comp_l2[2]  <= comp_l1[4]; 
				index_l2[2] <= index_l1[4]; 
			end
		end
	end
	///////////////////////////////////////////////////////
	//第三个时钟

	always @(posedge clk) begin
		if (rst) begin
			comp_l3[0] <= 0;
			index_l3[0] <= 0;
		end
		else begin
			if (idata_vaild_d2) begin
				if (comp_l2[0] >= comp_l2[1]) begin
					comp_l3[0]  <= comp_l2[0];
					index_l3[0] <= index_l2[0];
				end
				else begin
					comp_l3[0]  <= comp_l2[1];
					index_l3[0] <= index_l2[1];
				end
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			comp_l3[1] <= 0;
			index_l3[1] <= 0;
		end
		else begin
			if (idata_vaild_d2) begin
				comp_l3[1]  <= comp_l2[2];
				index_l3[1] <= index_l2[2];
			end
		end
	end
	////////////////////////////////////////////////////
	//第四个时钟

	always @(posedge clk) begin
		if (rst) begin
			comp_l4 <= 0;
			index_l4 <= 0;
		end
		else begin
			if (idata_vaild_d3) begin
				if (comp_l3[0] >= comp_l3[1]) begin
					comp_l4 <= comp_l3[0];
					index_l4 <= index_l3[0];
				end
				else begin
					comp_l4 <= comp_l3[1];
					index_l4 <= index_l3[1];
				end
			end
		end
	end

	assign odata_vaild = idata_vaild_d4;
	assign odata = {comp_l4,9'b0,index_l4};

endmodule
