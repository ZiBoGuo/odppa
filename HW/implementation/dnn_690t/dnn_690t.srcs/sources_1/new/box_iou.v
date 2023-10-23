`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/08 21:21:08
// Design Name: 
// Module Name: box_iou
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


module box_iou(
	input        		clk,
	input        		rst,
	input               idata_vaild,
	input[15:0]			threshold,
	input[15:0]        	a_w,
	input[15:0]        	a_h,
	input[15:0]        	a_x,
	input[15:0]        	a_y,
	input[15:0]        	b_w,
	input[15:0]        	b_h,
	input[15:0]        	b_x,
	input[15:0]        	b_y,
	output 				iou, 
	output              iou_vaild
    );
	
	reg [15:0]			inter_w;
	reg [15:0]			inter_h;
	reg [15:0]			inter;
	reg [15:0]			inter_threshold;
	reg [15:0]			inter_threshold_d1;

	reg [15:0]			left_r;
	reg [15:0]			right_r;

	reg [15:0]			up_r;
	reg [15:0]			bottom_r;

	reg [15:0]			box_a;
	reg [15:0]			box_b;
	reg [15:0]			box_a_b;
	reg [15:0]			box_a_b_d1;

	reg [15:0]			union;
	reg [15:0]			union_threshold;

	//第一个时钟计算inter区域的左边界
	always @(posedge clk) begin
		if (rst) begin
			left_r <= 0;
		end
		else begin
			if (idata_vaild) begin
				if ((a_x - (a_w >>> 1)) > (b_x - (b_w >>> 1))) begin
					left_r <= a_x - (a_w >>> 1);
				end
				else begin
					left_r <= b_x - (b_w >>> 1);
				end
			end
		end
	end
	//第一个时钟计算inter区域的右边界
	always @(posedge clk) begin
		if (rst) begin
			right_r <= 0;
		end
		else  begin
			if (idata_vaild) begin
				if ((a_x + (a_w >>> 1)) < (b_x + (b_w >>> 1))) begin
					right_r <= a_x + (a_w >>> 1);
				end
				else begin
					right_r <= b_x + (b_w >>> 1);
				end
			end
		end
	end
	//第一个时钟计算inter区域的上边界
	always @(posedge clk) begin
		if (rst) begin
			up_r <= 0;
		end
		else  begin
			if (idata_vaild) begin
				if ((a_y - (a_h >>> 1)) > (b_y - (b_h >>> 1))) begin
					up_r <= a_y - (a_h >>> 1);
				end
				else begin
					up_r <= b_y - (b_h >>> 1);
				end
			end
		end
	end
	//第一个时钟计算inter区域的下边界
	always @(posedge clk) begin
		if (rst) begin
			bottom_r <= 0;
		end
		else  begin
			if (idata_vaild) begin
				if ((a_y + (a_h >>> 1)) < (b_y + (b_h >>> 1))) begin
					bottom_r <= a_y + (a_h >>> 1);
				end
				else begin
					bottom_r <= b_y + (b_h >>> 1);
				end
			end
		end
	end
	//第二个时钟求取inter区域的w和h
	always @(posedge clk) begin
		if (rst) begin
			inter_w <= 0;
			inter_h <= 0;
		end
		else begin
			if (right_r >= left_r)begin
				inter_w <= right_r - left_r;
			end
			else begin
				inter_w <= 0;
			end
			if (bottom_r >= up_r) begin
				inter_h <= bottom_r - up_r;
			end
			else begin
				inter_h <= 0;
			end
			
		end
	end
	//第三个时钟求取inter区域面积
	always @(posedge clk) begin
		if (rst) begin
			inter <= 0;
		end
		else begin
			inter <= inter_w * inter_h;
		end
	end

	//第四个时钟求取inter区域乘阈值后的值
	always @(posedge clk) begin
		if (rst) begin
			inter_threshold <= 0;
		end
		else begin
			inter_threshold <= inter <<< 7;
		end
	end
	//第五个时钟inter_threshold延时一个时钟
	always @(posedge clk) begin
		if (rst) begin
			inter_threshold_d1 <= 0;
		end
		else begin
			inter_threshold_d1 <= inter_threshold;
		end
	end

	//第一个时钟计算两个目标框的面积
	always @(posedge clk) begin
		if (rst) begin
			box_a <= 0;
			box_b <= 0;
		end
		else begin
			box_a <= a_w * a_h;
			box_b <= b_w * b_h;
		end
	end

	//第二个时钟计算两个目标框的面积
	always @(posedge clk) begin
		if (rst) begin
			box_a_b <= 0;
		end
		else begin
			box_a_b <= box_a + box_b;
		end
	end

	//第三个时钟等待inter区域面积
	always @(posedge clk) begin
		if (rst) begin
			box_a_b_d1 <= 0;
		end
		else begin
			box_a_b_d1 <= box_a_b;
		end
	end
	//第四个时钟计算union面积
	always @(posedge clk) begin
		if (rst) begin
			union <= 0;
		end
		else begin
			union <= box_a_b_d1 - inter;
		end
	end
	//第五个时钟计算union乘阈值
	always @(posedge clk) begin
		if (rst) begin
			union_threshold <= 0;
		end
		else begin
			union_threshold <= union * threshold;
		end
	end

	assign iou = (inter_threshold_d1 > union_threshold)? 1:0;

	delay_vaild #(
				.DELAY_TIME(5)
		) uut_delay_vaild (
			.clk(clk),
			.rst(rst),
			.ram_din_valid(idata_vaild),
			.ram_dout_valid_delay(iou_vaild)
	);

endmodule
