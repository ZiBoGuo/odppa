`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/28 18:32:46
// Design Name: 
// Module Name: buffer_pool
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


module buffer_pool(
	input              	 clk,
	input         	     en,
	input [6:0]        	 we,
	input [62:0]		 addra,
	input [8:0]		     addrb,
	input [223:0]        dina,

	output [223:0]       doutb
    );

bram32_512 uut_xy_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[0]),
	.addra(addra[8:0]),	//[8:0]
	.dina(dina[31:0]),	//[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[31:0])	//[31:0]
);

bram32_512 uut_wh_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[1]),
	.addra(addra[17:9]),//[8:0]
	.dina(dina[63:32]),	//[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[63:32])	//[31:0]
);

bram32_512 uut_cls1_2_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[2]),
	.addra(addra[26:18]),//[8:0]
	.dina(dina[95:64]),	 //[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[95:64])  //[31:0]
);

bram32_512 uut_cls3_4_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[3]),
	.addra(addra[35:27]),//[8:0]
	.dina(dina[127:96]),//[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[127:96])//[31:0]
);

bram32_512 uut_cls5_6_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[4]),
	.addra(addra[44:36]),//[8:0]
	.dina(dina[159:128]),//[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[159:128])//[31:0]
);

bram32_512 uut_cls7_8_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[5]),
	.addra(addra[53:45]),//[8:0]
	.dina(dina[191:160]),//[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[191:160])//[31:0]
);

bram32_512 uut_cls9_10_bram(
	.clka(clk),
	.ena(1'b1),
	.wea(we[6]),
	.addra(addra[62:54]),//[8:0]
	.dina(dina[223:192]),//[31:0]
	.clkb(clk),
	.addrb(addrb),	//[8:0]
	.enb(en),
	.doutb(doutb[223:192])//[31:0]
);

// bram16_256 uut_x_bram(
// 	.clka(clk),
// 	.ena(ena[0]),
// 	.wea(wea[0]),
// 	.addra(addra[7:0]),//[7:0]
// 	.dina(dina[15:0]),//[15:0]
// 	.douta(douta[15:0])//[15:0]
// );
// bram16_256 uut_y_bram(
// 	.clka(clk),
// 	.ena(ena[1]),
// 	.wea(wea[1]),
// 	.addra(addra[15:8]),//[7:0]
// 	.dina(dina[31:16]),//[15:0]
// 	.douta(douta[31:16])//[15:0]
// );
// bram16_256 uut_w_bram(
// 	.clka(clk),
// 	.ena(ena[2]),
// 	.wea(wea[2]),
// 	.addra(addra[23:16]),//[7:0]
// 	.dina(dina[47:32]),//[15:0]
// 	.douta(douta[47:32])//[15:0]
// );
// bram16_256 uut_h_bram(
// 	.clka(clk),
// 	.ena(ena[3]),
// 	.wea(wea[3]),
// 	.addra(addra[31:24]),//[7:0]
// 	.dina(dina[63:48]),//[15:0]
// 	.douta(douta[63:48])//[15:0]
// );
// bram16_256 uut_cls1_bram(
// 	.clka(clk),
// 	.ena(ena[4]),
// 	.wea(wea[4]),
// 	.addra(addra[39:32]),//[7:0]
// 	.dina(dina[79:64]),//[15:0]
// 	.douta(douta[79:64])//[15:0]
// );
// bram16_256 uut_cls2_bram(
// 	.clka(clk),
// 	.ena(ena[5]),
// 	.wea(wea[5]),
// 	.addra(addra[47:40]),//[7:0]
// 	.dina(dina[95:80]),//[15:0]
// 	.douta(douta[95:80])//[15:0]
// );
// bram16_256 uut_cls3_bram(
// 	.clka(clk),
// 	.ena(ena[6]),
// 	.wea(wea[6]),
// 	.addra(addra[55:48]),//[7:0]
// 	.dina(dina[111:96]),//[15:0]
// 	.douta(douta[111:96])//[15:0]
// );
// bram16_256 uut_cls4_bram(
// 	.clka(clk),
// 	.ena(ena[7]),
// 	.wea(wea[7]),
// 	.addra(addra[63:56]),//[7:0]
// 	.dina(dina[127:112]),//[15:0]
// 	.douta(douta[127:112])//[15:0]
// );
// bram16_256 uut_cls5_bram(
// 	.clka(clk),
// 	.ena(ena[8]),
// 	.wea(wea[8]),
// 	.addra(addra[71:64]),//[7:0]
// 	.dina(dina[143:128]),//[15:0]
// 	.douta(douta[143:128])//[15:0]
// );
// bram16_256 uut_cls6_bram(
// 	.clka(clk),
// 	.ena(ena[9]),
// 	.wea(wea[9]),
// 	.addra(addra[79:72]),//[7:0]
// 	.dina(dina[159:144]),//[15:0]
// 	.douta(douta[159:144])//[15:0]
// );
// bram16_256 uut_cls7_bram(
// 	.clka(clk),
// 	.ena(ena[10]),
// 	.wea(wea[10]),
// 	.addra(addra[87:80]),//[7:0]
// 	.dina(dina[175:160]),//[15:0]
// 	.douta(douta[175:160])//[15:0]
// );
// bram16_256 uut_cls8_bram(
// 	.clka(clk),
// 	.ena(ena[11]),
// 	.wea(wea[11]),
// 	.addra(addra[95:88]),//[7:0]
// 	.dina(dina[191:176]),//[15:0]
// 	.douta(douta[191:176])//[15:0]
// );
// bram16_256 uut_cls9_bram(
// 	.clka(clk),
// 	.ena(ena[12]),
// 	.wea(wea[12]),
// 	.addra(addra[103:96]),//[7:0]
// 	.dina(dina[207:192]),//[15:0]
// 	.douta(douta[207:192])//[15:0]
// );
// bram16_256 uut_cls10_bram(
// 	.clka(clk),
// 	.ena(ena[13]),
// 	.wea(wea[13]),
// 	.addra(addra[111:104]),//[7:0]
// 	.dina(dina[223:208]),//[15:0]
// 	.douta(douta[223:208])//[15:0]
// );
endmodule
