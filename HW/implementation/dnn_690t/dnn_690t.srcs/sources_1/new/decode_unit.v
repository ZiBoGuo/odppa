`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/03 10:19:53
// Design Name: 
// Module Name: decode_unit
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


module decode_unit(
	input                   clk,
	input                   rst,
	input 					idata_vaild,
	input [5:0]             log2w,
	input [5:0]				log2h,

	input [31:0] 			biases,
	input [9:0]             cy,
	input [5:0]             cx, 
	input [15:0]            confidence,
	input [223:0]       	doutb,

	output [223:0]			odata,
	output                  odata_vaild
    );
	
	reg [31:0]              w;
	reg [31:0]				h;

	reg [31:0]              x;
	reg [31:0]				y;

	reg [31:0]              cls1_r;
	reg [31:0]				cls2_r;
	reg [31:0]				cls3_r;
	reg [31:0]				cls4_r;
	reg [31:0]				cls5_r;
	reg [31:0]				cls6_r;
	reg [31:0]				cls7_r;
	reg [31:0]				cls8_r;
	reg [31:0]				cls9_r;

	reg [15:0]              x_d1[1:0];
	reg [15:0]				y_d1[1:0];

	reg [15:0]              cls1_r_d1[1:0];
	reg [15:0]				cls2_r_d1[1:0];
	reg [15:0]				cls3_r_d1[1:0];
	reg [15:0]				cls4_r_d1[1:0];
	reg [15:0]				cls5_r_d1[1:0];
	reg [15:0]				cls6_r_d1[1:0];
	reg [15:0]				cls7_r_d1[1:0];
	reg [15:0]				cls8_r_d1[1:0];
	reg [15:0]				cls9_r_d1[1:0];
	//debug
	////////////////////////////////////////////////
	// wire [15:0]             x_d1_w;
	// wire [15:0]				y_d1_w;
	// wire [15:0]             cls1_r_d1_w;
	// wire [15:0]				cls2_r_d1_w;
	// wire [15:0]				cls3_r_d1_w;
	// wire [15:0]				cls4_r_d1_w;
	// wire [15:0]				cls5_r_d1_w;
	// wire [15:0]				cls6_r_d1_w;
	// wire [15:0]				cls7_r_d1_w;
	// wire [15:0]				cls8_r_d1_w;
	// wire [15:0]				cls9_r_d1_w;

	// assign x_d1_w = x_d1[1];
	// assign y_d1_w = y_d1[1];
	// assign cls1_r_d1_w = cls1_r_d1[1];
	// assign cls2_r_d1_w = cls2_r_d1[1];
	// assign cls3_r_d1_w = cls3_r_d1[1];
	// assign cls4_r_d1_w = cls4_r_d1[1];
	// assign cls5_r_d1_w = cls5_r_d1[1];
	// assign cls6_r_d1_w = cls6_r_d1[1];
	// assign cls7_r_d1_w = cls7_r_d1[1];
	// assign cls8_r_d1_w = cls8_r_d1[1];
	// assign cls9_r_d1_w = cls9_r_d1[1];
	///////////////////////////////////////////////

	reg [15:0]              cx_r[3:0];
	reg [15:0]				cy_r[3:0];

	//wire [15:0]				cx_r_w;
	//wire [15:0]				cy_r_w;

	reg [15:0]              confidence_r[3:0]; 

	wire [15:0]             w_exp;
	wire [15:0]				h_exp;

	// wire             		w_exp_vaild;
	// wire 					h_exp_vaild;

	wire [15:0]             x_s;
	wire [15:0]				y_s;
	wire [15:0]             cls1_s;
	wire [15:0]				cls2_s;
	wire [15:0]             cls3_s;
	wire [15:0]				cls4_s;
	wire [15:0]             cls5_s;
	wire [15:0]				cls6_s;
	wire [15:0]             cls7_s;
	wire [15:0]				cls8_s;
	wire [15:0]				cls9_s;

	// wire             		x_s_vaild;
	// wire 					y_s_vaild;
	// wire             		cls1_s_vaild;
	// wire					cls2_s_vaild;
	// wire             		cls3_s_vaild;
	// wire					cls4_s_vaild;
	// wire             		cls5_s_vaild;
	// wire					cls6_s_vaild;
	// wire             		cls7_s_vaild;
	// wire					cls8_s_vaild;
	// wire					cls9_s_vaild;
	wire             		s_vaild;
	wire 					exp_vaild;
	reg                     odata_vaild_r;
	assign odata_vaild = odata_vaild_r;
	always @(posedge clk) begin
		if (rst) begin
			x_d1[0] <= 0;
			y_d1[0] <= 0;
			cls1_r_d1[0] <= 0;
			cls2_r_d1[0] <= 0;
			cls3_r_d1[0] <= 0;
			cls4_r_d1[0] <= 0;
			cls5_r_d1[0] <= 0;
			cls6_r_d1[0] <= 0;
			cls7_r_d1[0] <= 0;
			cls8_r_d1[0] <= 0;
			cls9_r_d1[0] <= 0;
			x_d1[1] <= 0;
			y_d1[1] <= 0;
			cls1_r_d1[1] <= 0;
			cls2_r_d1[1] <= 0;
			cls3_r_d1[1] <= 0;
			cls4_r_d1[1] <= 0;
			cls5_r_d1[1] <= 0;
			cls6_r_d1[1] <= 0;
			cls7_r_d1[1] <= 0;
			cls8_r_d1[1] <= 0;
			cls9_r_d1[1] <= 0;
			odata_vaild_r <= 0;
		end
		else begin
			x_d1[0] <= x;
			y_d1[0] <= y;
			cls1_r_d1[0] <= cls1_r;
			cls2_r_d1[0] <= cls2_r;
			cls3_r_d1[0] <= cls3_r;
			cls4_r_d1[0] <= cls4_r;
			cls5_r_d1[0] <= cls5_r;
			cls6_r_d1[0] <= cls6_r;
			cls7_r_d1[0] <= cls7_r;
			cls8_r_d1[0] <= cls8_r;
			cls9_r_d1[0] <= cls9_r;
			x_d1[1] <= x_d1[0];
			y_d1[1] <= y_d1[0];
			cls1_r_d1[1] <= cls1_r_d1[0];
			cls2_r_d1[1] <= cls2_r_d1[0];
			cls3_r_d1[1] <= cls3_r_d1[0];
			cls4_r_d1[1] <= cls4_r_d1[0];
			cls5_r_d1[1] <= cls5_r_d1[0];
			cls6_r_d1[1] <= cls6_r_d1[0];
			cls7_r_d1[1] <= cls7_r_d1[0];
			cls8_r_d1[1] <= cls8_r_d1[0];
			cls9_r_d1[1] <= cls9_r_d1[0];
			odata_vaild_r <= exp_vaild;
		end
	end
	always @(posedge clk) begin
		if (rst) begin
		    w <= 0;
		end
		else begin
			if (exp_vaild) begin
				w <= (w_exp * biases[15:0]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
		    h <= 0;
		end
		else begin
			if (exp_vaild) begin
				h <= (h_exp * biases[31:16]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cx_r[0] 		<= 0;
			cy_r[0]			<= 0;
			cx_r[1] 		<= 0;
			cy_r[1]			<= 0;
			cx_r[2] 		<= 0;
			cy_r[2]			<= 0;
			cx_r[3] 		<= 0;
			cy_r[3]			<= 0;
			confidence_r[0] <= 0;
			confidence_r[1] <= 0;
			confidence_r[2] <= 0;
			confidence_r[3] <= 0;
		end
		else begin
			cx_r[0] <= cx <<< 12;
			cy_r[0] <= cy <<< 12;
			cx_r[1] <= cx_r[0];
			cy_r[1] <= cy_r[0];
			cx_r[2] <= cx_r[1];
			cy_r[2] <= cy_r[1];
			cx_r[3] <= cx_r[2];
			cy_r[3] <= cy_r[2];
			confidence_r[0] <= confidence;
			confidence_r[1] <= confidence_r[0];
			confidence_r[2] <= confidence_r[1];
			confidence_r[3] <= confidence_r[2];
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			x <= 0;
		end
		else begin
			if (s_vaild) begin
				x <= (cx_r[3] + x_s) >>> (log2w + 4);
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			y <= 0;
		end
		else begin
			if (s_vaild) begin
				y <= (cy_r[3] + y_s) >>> (log2h + 4);
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls1_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls1_r <= (cls1_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls2_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls2_r <= (cls2_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls3_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls3_r <= (cls3_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls4_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls4_r <= (cls4_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls5_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls5_r <= (cls5_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls6_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls6_r <= (cls6_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls7_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls7_r <= (cls7_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls8_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls8_r <= (cls8_s * confidence_r[3]) >>> 12;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			cls9_r <= 0;
		end
		else begin
			if (s_vaild) begin
				cls9_r <= (cls9_s * confidence_r[3]) >>> 12;
			end
		end
	end

	//assign cx_r_w = cx_r[3];
	//assign cy_r_w = cy_r[3];
	exponent uut_exponent_w(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[47:32]),
		.idata_vaild(idata_vaild),
		.odata(w_exp),
		.odata_vaild(exp_vaild)
	);

	exponent uut_exponent_h(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[63:48]),
		.idata_vaild(idata_vaild),
		.odata(h_exp),
		.odata_vaild()
	);

	sigmoid uut_sigmoid_x(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[15:0]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(x_s),//0~4096
		.odata_vaild(s_vaild)
	);

	sigmoid uut_sigmoid_y(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[31:16]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(y_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls1(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[79:64]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls1_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls2(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[95:80]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls2_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls3(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[111:96]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls3_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls4(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[127:112]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls4_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls5(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[143:128]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls5_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls6(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[159:144]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls6_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls7(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[175:160]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls7_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls8(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[191:176]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls8_s),//0~4096
		.odata_vaild()
	);

	sigmoid uut_sigmoid_cls9(
		.clk(clk), 
		.rst(rst),
		.idata(doutb[207:192]),//-32767-32767
		.idata_vaild(idata_vaild),
		.odata(cls9_s),//0~4096
		.odata_vaild()
	);

	assign odata = {16'b0,cls9_r_d1[1],cls8_r_d1[1],cls7_r_d1[1],cls6_r_d1[1],cls5_r_d1[1],cls4_r_d1[1],cls3_r_d1[1],cls2_r_d1[1],cls1_r_d1[1],h[15:0],w[15:0],y_d1[1],x_d1[1]};

endmodule
