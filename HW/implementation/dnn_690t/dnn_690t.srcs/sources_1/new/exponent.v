`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xidian University
// Engineer: Zibo Guo
// 
// Create Date: 2023/06/19 17:59:08
// Design Name: Post processing of YOLO
// Module Name: exponent
// Project Name: dnn_690t
// Target Devices: VC709
// Tool Versions: 2018.3
// Description: The result is output after 6 clocks
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

(*use_dsp48="yes"*) 

module exponent(
	input                		clk, 
	input                		rst,
	input signed [15:0]         idata,//
	input                		idata_vaild,
	output [15:0]		        odata,
	output               		odata_vaild

    );
	reg [31:0]			 odata_reg;
	reg signed [15:0]    idata_reg; 
	reg signed [2:0]     idata_int_reg;//-2,-1,0,1,2
	reg signed [15:0]    idata_fl_reg; 

	reg [15:0]    int_exp;
	wire [15:0]    fl_exp;  

	reg                  idata_vaild_d1;
	reg                  idata_vaild_d2;
	reg                  idata_vaild_d3;
	reg                  idata_vaild_d4;
	reg                  idata_vaild_d5;
	reg [15:0]           int_exp_d2;
	reg                  idata_vaild_d6;
	reg [15:0]           int_exp_d1;
	reg [15:0]           int_exp_d3;

	wire signed [2:0]    idata_int;
	reg [11:0]			 addr_reg;

	//dely the input in the 0 cycle
	always @(posedge clk) begin
		if (rst) begin
			idata_reg       <= 0;
			idata_vaild_d1  <= 0;
			idata_vaild_d2  <= 0;
			idata_vaild_d3  <= 0;
			idata_vaild_d4  <= 0;
			idata_vaild_d5  <= 0;
			idata_vaild_d6  <= 0;
			int_exp_d1		<= 0;
			int_exp_d2		<= 0;
			int_exp_d3		<= 0;
		end
		else begin
			idata_reg       <= idata;
			idata_vaild_d1  <= idata_vaild;
			idata_vaild_d2  <= idata_vaild_d1;
			idata_vaild_d3  <= idata_vaild_d2;
			idata_vaild_d4  <= idata_vaild_d3;
			idata_vaild_d5  <= idata_vaild_d4;
			idata_vaild_d6  <= idata_vaild_d5;
			int_exp_d1		<= int_exp;
			int_exp_d2		<= int_exp_d1;
			int_exp_d3		<= int_exp_d2;
		end
	end

	//get the intger in the 1 cycle
	always @(posedge clk) begin
		if (rst) begin
			idata_int_reg <= 0;
		end
		else begin
			if (idata_vaild) begin
				if (idata < 0) begin
					idata_int_reg <= ~((~idata + 1) >> 12) + 1;
				end
				else begin
					idata_int_reg <= idata >> 12;
				end
			end
		end
	end

	//get the fraction and int_exp in the 2 cycle 
	always @(posedge clk) begin
		if (rst) begin
			idata_fl_reg <= 0;
			int_exp      <= 0;
		end
		else begin
			idata_fl_reg <= (idata_reg - 4096 * idata_int_reg); 
			if (idata_int_reg <= -2) begin
				int_exp <= 554;
			end
			if (idata_int_reg == -1) begin
				int_exp <= 1506;
			end
			if (idata_int_reg == 0) begin
				int_exp <= 4096;
			end
			if (idata_int_reg == 1) begin
				int_exp <= 11134;
			end
			if (idata_int_reg >= 2) begin
				int_exp <= 30265;
			end
		end
	end

	//get the addr in the 3 cycle
	always @(posedge clk) begin
		if (rst) begin
			addr_reg     <= 0;
		end
		else begin
			addr_reg     <= (idata_fl_reg >> 1) + 2047;
		end
	end
	//get the fl_exp and odata in the 5 cycle
	wire[11:0] addra;
	assign addra = addr_reg;

	ExpROM uut_expROM (
		.clka(clk),
    	.ena(1'b1), 
    	.addra(addra),
    	.douta(fl_exp)
	);
	always @(posedge clk) begin
		if (rst) begin
			odata_reg <= 0;
		end
		else  begin
			odata_reg <= (int_exp_d3 * fl_exp) >>> 12;
		end
	end
	assign odata = odata_reg;
	assign odata_vaild = idata_vaild_d6;

endmodule
