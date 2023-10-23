// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jul  1 11:41:20 2020
// Host        : DESKTOP-K64AKHE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP48_MACRO_stub.v
// Design      : DSP48_MACRO
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, SEL, PCIN, A, B, PCOUT, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SEL[0:0],PCIN[47:0],A[17:0],B[17:0],PCOUT[47:0],P[47:0]" */;
  input CLK;
  input [0:0]SEL;
  input [47:0]PCIN;
  input [17:0]A;
  input [17:0]B;
  output [47:0]PCOUT;
  output [47:0]P;
endmodule
