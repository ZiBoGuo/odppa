`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/30 20:20:40
// Design Name: 
// Module Name: write_cache_pool
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


module write_cache_pool(
	input                   clk,
	input                   rst,
	input [511:0]    	    conv_data,
	input  				    conv_data_valid,
	input [5:0]             layer_w,
	input [5:0]             layer_h,

	output [6:0]        	wea_1,
	output [62:0]			addra_1,
	output [223:0]       	dina_1,

	output [6:0]        	wea_2,
	output [62:0]			addra_2,
	output [223:0]       	dina_2,

	output [6:0]        	wea_3,
	output [62:0]			addra_3,
	output [223:0]       	dina_3,

	output signed [15:0]    b1_c_w,
	output signed [15:0]    b2_c_w,
	output signed [15:0]    b3_c_w,

	output                  tile
    );
	
	reg                     tile_r;
	reg [31:0]              count;

	always @(posedge clk) begin
		if (rst) begin
			count <= 0;
		end
		else begin
			if (conv_data_valid && count < layer_w * layer_h * 2) begin
				count <= count + 1; 
			end
			else begin
				count <= 0;
			end
		end
	end

	reg signed [15:0]		b1_x;
	reg signed [15:0]		b1_y;
	reg signed [15:0]		b1_w;
	reg signed [15:0]		b1_h;
	reg signed [15:0]		b1_c;
	reg signed [15:0]		b1_cls1;
	reg signed [15:0]		b1_cls2;
	reg signed [15:0]		b1_cls3;
	reg signed [15:0]		b1_cls4;
	reg signed [15:0]		b1_cls5;
	reg signed [15:0]		b1_cls6;
	reg signed [15:0]		b1_cls7;
	reg signed [15:0]		b1_cls8;
	reg signed [15:0]		b1_cls9;
	//reg signed [15:0]		b1_cls10;

	reg signed [15:0]		b2_x;
	reg signed [15:0]		b2_y;
	reg signed [15:0]		b2_w;
	reg signed [15:0]		b2_h;
	reg signed [15:0]		b2_c;
	reg signed [15:0]		b2_cls1;
	reg signed [15:0]		b2_cls2;
	reg signed [15:0]		b2_cls3;
	reg signed [15:0]		b2_cls4;
	reg signed [15:0]		b2_cls5;
	reg signed [15:0]		b2_cls6;
	reg signed [15:0]		b2_cls7;
	reg signed [15:0]		b2_cls8;
	reg signed [15:0]		b2_cls9;
	//reg signed [15:0]		b2_cls10;

	reg signed [15:0]		b3_x;
	reg signed [15:0]		b3_y;
	reg signed [15:0]		b3_w;
	reg signed [15:0]		b3_h;
	reg signed [15:0]		b3_c;
	reg signed [15:0]		b3_cls1;
	reg signed [15:0]		b3_cls2;
	reg signed [15:0]		b3_cls3;
	reg signed [15:0]		b3_cls4;
	reg signed [15:0]		b3_cls5;
	reg signed [15:0]		b3_cls6;
	reg signed [15:0]		b3_cls7;
	reg signed [15:0]		b3_cls8;
	reg signed [15:0]		b3_cls9;
	//reg signed [15:0]		b3_cls10;
	

	reg [6:0]        		ena_1_r;
	reg [6:0]        		wea_1_r;
	reg [6:0]        		ena_2_r;
	reg [6:0]        		wea_2_r;
	reg [6:0]        		ena_3_r;
	reg [6:0]        		wea_3_r;

	reg [8:0]               addr_r_tile1;
	reg [8:0]               addr_r_tile2;

	reg [8:0]               addr_r_tile1_d1;
	reg [8:0]               addr_r_tile2_d1;

	always @(posedge clk) begin
		if (rst) begin
			b1_x 			<= 0;
			b1_y 			<= 0;
			b1_w 			<= 0;
			b1_h 			<= 0;
			b1_c 			<= 0;
			b1_cls1 		<= 0;
			b1_cls2 		<= 0;
			b1_cls3 		<= 0;
			b1_cls4 		<= 0;
			b1_cls5 		<= 0;
			b1_cls6 		<= 0;
			b1_cls7 		<= 0;
			b1_cls8 		<= 0;
			b1_cls9 		<= 0;
			b2_x 			<= 0;
			b2_y 			<= 0;
			b2_w 			<= 0;
			b2_h 			<= 0;
			b2_c 			<= 0;
			b2_cls1 		<= 0;
			b2_cls2 		<= 0;
			b2_cls3 		<= 0;
			b2_cls4 		<= 0;
			b2_cls5 		<= 0;
			b2_cls6 		<= 0;
			b2_cls7 		<= 0;
			b2_cls8 		<= 0;
			b2_cls9 		<= 0;
			b3_x 			<= 0;
			b3_y 			<= 0;
			b3_w 			<= 0;
			b3_h 			<= 0;
			b3_c 			<= 0;
			b3_cls1         <= 0;
			b3_cls2         <= 0;
			b3_cls3         <= 0;
			b3_cls4         <= 0;
			b3_cls5         <= 0;
			b3_cls6   	    <= 0;
			b3_cls7         <= 0;
			b3_cls8         <= 0;
			b3_cls9 	    <= 0;
			addr_r_tile1    <= 0;
			addr_r_tile2    <= 0;
			//addr_r_tile1_d1 <= 0;
			//addr_r_tile2_d1 <= 0;
			wea_1_r         <= 0;
			wea_2_r         <= 0;
			wea_3_r         <= 0;
			tile_r          <= 0;
		end
		else begin//0,2,4,...,30,1,3,5,...,31
			if (conv_data_valid && count < layer_w * layer_h)begin
				b1_x 	 <= conv_data[511:496];
				b1_y 	 <= conv_data[255:240];
				b1_w     <= conv_data[495:480];
				b1_h     <= conv_data[239:224];
				b1_c     <= conv_data[479:464];
				b1_cls1  <= conv_data[223:208];
				b1_cls2  <= conv_data[463:448];
				b1_cls3  <= conv_data[207:192];
				b1_cls4  <= conv_data[447:432];
				b1_cls5  <= conv_data[191:176];
				b1_cls6  <= conv_data[431:416];
				b1_cls7  <= conv_data[175:160];
				b1_cls8  <= conv_data[415:400];
				b1_cls9  <= conv_data[159:144]; 
				b2_x 	 <= conv_data[399:384];
				b2_y 	 <= conv_data[143:128];
				b2_w     <= conv_data[383:368];
				b2_h     <= conv_data[127:112];
				b2_c     <= conv_data[367:352];
				b2_cls1  <= conv_data[111:96];
				b2_cls2  <= conv_data[351:336];
				b2_cls3  <= conv_data[95:80];
				b2_cls4  <= conv_data[335:320];
				b2_cls5  <= conv_data[79:64];
				b2_cls6  <= conv_data[319:304];
				b2_cls7  <= conv_data[63:48];
				b2_cls8  <= conv_data[303:288];
				b2_cls9  <= conv_data[47:32];
				b3_x 	 <= conv_data[287:272];
				b3_y 	 <= conv_data[31:16];
				b3_w     <= conv_data[271:256];
				b3_h     <= conv_data[15:0];
				wea_1_r  <= 7'b1111111;
				wea_2_r  <= 7'b1111111;
				wea_3_r  <= 7'b0000011;
				addr_r_tile1    <= addr_r_tile1 + 1;
				tile_r   <= 0;
			end
			else begin //0,2,4,...,30,1,3,5,...,31
				addr_r_tile1    <= 0;
				if (conv_data_valid && count < layer_w * layer_h * 2) begin
					b3_c     <= conv_data[511:496];
					b3_cls1  <= conv_data[255:240];
					b3_cls2  <= conv_data[495:480];
					b3_cls3  <= conv_data[239:224];
					b3_cls4  <= conv_data[479:464];
					b3_cls5  <= conv_data[223:208];
					b3_cls6  <= conv_data[463:448];
					b3_cls7  <= conv_data[207:192];
					b3_cls8  <= conv_data[447:432];
					b3_cls9  <= conv_data[191:176];
					wea_1_r  <= 7'b0000000;
					wea_2_r  <= 7'b0000000;
					wea_3_r  <= 7'b1111100;
					addr_r_tile2    <= addr_r_tile2 + 1;
					tile_r          <= 1;
				end
				else begin
					wea_1_r      <= 7'b0000000;
					wea_2_r      <= 7'b0000000;
					wea_3_r      <= 7'b0000000;
					addr_r_tile2 <= 0;
					tile_r       <= 0;
				end
			end
		end
	end

always @(posedge clk) begin
	if (rst) begin
		addr_r_tile1_d1 <= 0;
		addr_r_tile2_d1 <= 0;
	end
	else begin
		addr_r_tile1_d1 <= addr_r_tile1;
		addr_r_tile2_d1 <= addr_r_tile2;
	end
end

assign wea_1   = wea_1_r;
assign wea_2   = wea_2_r;
assign wea_3   = wea_3_r;

assign addra_1 = {addr_r_tile1_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1};

assign addra_2 = {addr_r_tile1_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1};
//9+4
assign addra_3 = {addr_r_tile2_d1,addr_r_tile2_d1,
				  addr_r_tile2_d1,addr_r_tile2_d1,
				  addr_r_tile2_d1,addr_r_tile1_d1,
				  addr_r_tile1_d1};

assign dina_1 = {16'd0,b1_cls9,b1_cls8,b1_cls7,b1_cls6,b1_cls5,b1_cls4,b1_cls3,b1_cls2,b1_cls1,b1_h,b1_w,b1_y,b1_x};
assign dina_2 = {16'd0,b2_cls9,b2_cls8,b2_cls7,b2_cls6,b2_cls5,b2_cls4,b2_cls3,b2_cls2,b2_cls1,b2_h,b2_w,b2_y,b2_x};
assign dina_3 = {16'd0,b3_cls9,b3_cls8,b3_cls7,b3_cls6,b3_cls5,b3_cls4,b3_cls3,b3_cls2,b3_cls1,b3_h,b3_w,b3_y,b3_x};

assign b1_c_w = b1_c;
assign b2_c_w = b2_c;
assign b3_c_w = b3_c;

assign tile = tile_r;
endmodule
