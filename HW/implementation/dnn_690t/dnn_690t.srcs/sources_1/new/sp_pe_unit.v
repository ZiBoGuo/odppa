`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/11 20:59:05
// Design Name: 
// Module Name: sp_pe_unit
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


module sp_pe_unit(
	input          		clk,
	input          		rst,

	input               state,

	input               idata_vaild,
	input[15:0]			threshold,
	input[15:0]        	a_w,
	input[15:0]        	a_h,
	input[15:0]        	a_x,
	input[15:0]        	a_y,
	input[15:0]        	a_cls,
	input[15:0]        	a_cls_c,

	output[95:0]        odata,      //最终输出的结果
	output 				del,
	output 				ins, 
	output              state1_vaild,
	output              state0_done

    );
	
	wire[15:0]        	s_w_w;
	wire[15:0]        	s_h_w;
	wire[15:0]        	s_x_w;
	wire[15:0]        	s_y_w;

	reg[15:0]			s_w;
	reg[15:0]        	s_h;
	reg[15:0]        	s_x;
	reg[15:0]        	s_y;
	reg[15:0]        	s_cls;
	reg[15:0]        	s_cls_c;

	assign s_w_w = s_w;
	assign s_h_w = s_h;
	assign s_x_w = s_x;
	assign s_y_w = s_y;

	assign odata = {s_cls_c,s_cls,s_h,s_w,s_y,s_x};

	wire                iou;
	wire                iou_vaild;

	wire        iou_idata_vaild;

	assign iou_idata_vaild = idata_vaild && state && (a_cls == s_cls);

	reg                 del_r;
	reg                 ins_r;
	reg                 state0_done_r;
	assign state0_done = state0_done_r;
	assign del = del_r;
	assign ins = ins_r;

	always @(posedge clk) begin
		if (rst) begin
			s_w     <= 0;
			s_h	    <= 0;
			s_x	    <= 0;
			s_y     <= 0;
			s_cls   <= 0;
			s_cls_c <= 0;
			state0_done_r <= 0;
		end
		else begin
			if(idata_vaild && state == 0)begin
				s_w     <= a_w;
				s_h	    <= a_h;
				s_x	    <= a_x;
				s_y     <= a_y;
				s_cls   <= a_cls;
				s_cls_c <= a_cls_c;
				state0_done_r <= 1;
			end
			else begin
				state0_done_r <= 0;
			end
		end
	end

	wire[15:0]        	a_cls_d;
	wire[15:0]        	a_cls_c_d;

	wire                idata_vaild_d5;
	reg                 state1_vaild_r;

	always @(posedge clk) begin
		if (rst) begin
			state1_vaild_r <= 0;
		end
		else begin
			state1_vaild_r <= idata_vaild_d5;
		end
	end

	assign state1_vaild = state1_vaild_r;

	delay_vaild #(
		.DELAY_TIME(5)
		) uut_delay_vaild (
			.clk(clk),
			.rst(rst),
			.ram_din_valid(state && idata_vaild),
			.ram_dout_valid_delay(idata_vaild_d5)
	);

	delay_data #(
		.DELAY_TIME(5)
		) uut_delay_shiftcache_box_cls (
		.clk(clk),
		.rst(rst),
		.ram_din(a_cls),
		.ram_dout_delay(a_cls_d)
	);

	delay_data #(
		.DELAY_TIME(5)
		) uut_delay_shiftcache_box_cls_c (
		.clk(clk),
		.rst(rst),
		.ram_din(a_cls_c),
		.ram_dout_delay(a_cls_c_d)
	);

	

	always @(posedge clk) begin
		if (rst) begin
			del_r <= 0;
			ins_r <= 0;
		end
		else begin
			if (idata_vaild_d5) begin 
				if (a_cls_d != s_cls) begin  //a_box 与存储坐标不是同一类别
					del_r <= 0;  //原始存储box s 保留
					ins_r <= 1;  //a_box 相对与该坐标可插入
				end
				else begin
					if (iou == 0) begin //a_box 与存储坐标的iou没有大于阈值
						del_r <= 0;  //原始存储box s 保留
						ins_r <= 1;  //a_box 相对与该坐标可插入
					end
					else begin
						if (a_cls_c_d > s_cls_c) begin //iou大于阈值，且a_box的评分更高
							del_r <= 1;  //原始存储box s 保留
							ins_r <= 1;  //a_box 相对与该坐标可插入
						end
						else begin
							del_r <= 0;
							ins_r <= 0;
						end
					end
				end
			end
			else begin
				del_r <= 0;
				ins_r <= 0;
			end
		end
	end

	box_iou uut_box_iou(
		.clk(clk),
		.rst(rst),
		.idata_vaild(iou_idata_vaild),
		.threshold(threshold),
		.a_w(s_w_w),
		.a_h(s_h_w),
		.a_x(s_x_w),
		.a_y(s_y_w),
		.b_w(a_w),
		.b_h(a_h),
		.b_x(a_x),
		.b_y(a_y),
		.iou(iou), 
		.iou_vaild(iou_vaild)
	);
	
endmodule
