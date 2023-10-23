// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jun 30 20:03:56 2023
// Host        : DESKTOP-KELFSKD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/DNN_IP/DNNv4/dnn_690t/dnn_690t.srcs/sources_1/ip/bram32_512/bram32_512_stub.v
// Design      : bram32_512
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module bram32_512(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[8:0],dina[31:0],clkb,enb,addrb[8:0],doutb[31:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [8:0]addra;
  input [31:0]dina;
  input clkb;
  input enb;
  input [8:0]addrb;
  output [31:0]doutb;
endmodule
