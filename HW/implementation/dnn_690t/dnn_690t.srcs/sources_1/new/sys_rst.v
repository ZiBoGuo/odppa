`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 10:26:18
// Design Name: 
// Module Name: sys_rst
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


module sys_rst(
    input  sys_clk,
    input  clk_locked,

    output rst
);

parameter CNT_LEN = 16'hffff;

reg  [15:0] cnt;
reg         rst_out;

always @(posedge sys_clk)
    if(cnt == CNT_LEN)
        rst_out <= 1'b0;
    else
        rst_out <= 1'b1;

always @(posedge sys_clk)
    if(cnt == CNT_LEN)
        cnt <= cnt;
    else if(clk_locked)
        cnt <= cnt + 1'b1;
    else
        cnt <= 0;

assign rst = rst_out;

endmodule
