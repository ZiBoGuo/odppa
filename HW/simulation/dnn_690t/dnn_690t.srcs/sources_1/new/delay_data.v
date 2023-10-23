`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/12 11:13:30
// Design Name: 
// Module Name: delay_data
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


module delay_data#(   //delay>0
	parameter DELAY_TIME=5 //延时n 表示在第n个时钟拿到数据
	)(
	input		clk,
	input		rst,

	input [16- 1 : 0]			ram_din,
	output [16- 1 : 0]			ram_dout_delay

    );

reg [16- 1 : 0]   			    ram_din_r[DELAY_TIME-1:0];



always @(posedge clk) begin
			if(rst) begin
				 ram_din_r[0]<=ram_din;
			end else begin
				 ram_din_r[0]<=ram_din;
			end
end


genvar i;
generate
	if(DELAY_TIME>1)begin
		for(i=0;i<DELAY_TIME-1;i=i+1) begin
			always @(posedge clk) begin
				if(rst)begin
					ram_din_r[i+1]<=0;
				end
				else begin
					ram_din_r[i+1]<=ram_din_r[i];
				end
			end
		end
	end
endgenerate


// assign ram_dout_valid_delay=(DELAY_TIME==1)?ram_din_valid_r[0]:
// 						   (DELAY_TIME>1) ?ram_din_valid_r[DELAY_TIME-1]:0;
// assign ram_dout_delay=(DELAY_TIME==1)?ram_din_r[0]:
// 			   (DELAY_TIME>1) ?ram_din_r[DELAY_TIME-1]:0;
assign ram_dout_delay=ram_din_r[DELAY_TIME-1];


endmodule
