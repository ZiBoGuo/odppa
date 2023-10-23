// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jul  1 11:41:20 2020
// Host        : DESKTOP-K64AKHE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP48_MACRO_sim_netlist.v
// Design      : DSP48_MACRO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DSP48_MACRO,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SEL,
    PCIN,
    A,
    B,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sel_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sel_intf, LAYERED_METADATA undef" *) input [0:0]SEL;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire [0:0]SEL;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "1" *) 
  (* C_HAS_PCOUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000,000000000001010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000011000111000111000101100100" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "1" *) (* C_HAS_PCOUT = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000,000000000001010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000011000111000111000101100100" *) (* C_SEL_WIDTH = "1" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "1" *) 
  (* C_HAS_PCOUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000,000000000001010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000011000111000111000101100100" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
OA2cDxxBBgQGJMp2pxvIcb9dg8Uqwmv+0eyEdSECDu3UgdHiXU5FeBOB2Q9h9uII0FkFHF8ZM/p5
QCk1gyZuNA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ohw3/ONQPF4YSQ9T4UlhV3QIxoCPQR4nSH8nk5PkpXa2YESP9l5Ukzz3ov2c4s0uNC7340gxwGIh
iZiO71DkVAEONuxBbBoBIz9wl8KBcu3gIWYM3qoATzEBCvJUsWW3y7x4irWQVePt8OSzl7ugyAKH
Gavs/n2UAAo3JGr9nuQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qbQdmKpXGCQroM/9Mx26/oA5UfkaVHlnKnkEDXAiffyr+pAS4Xq2B/0/lqmbCYBBKnZpRSPoWUEs
Cg1/IqWvWntatpU9JwJ+hjvSRkztujxk9id6jXnKk8AFHe+y36LqoKhVdARle9zcy0G4UlY4ScPP
z18tJGZn1cVPNUr3wbHIKRZS/pdZdBjPIkpZzfpmtwAPWyBT4InH2oT1IUVra4E4Lbc2JeIXcpQI
MA4GDr2IGv/Enl3BKXEt0JzX1tZtq1bzklY6XMcUl1o97QwbFOZa1aUWgVBRRA1AJNIiMyg5Pvfc
Q9phtLshsSkW42KhxQMiXf2l/0OZGMvjsliZOA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ch1JwuARongvYA6wwxtZ9HrijShX8v/T8gJft+KazH/83xQ8WQuf2Auf0DEkLYqXb6lmqjTo5Qv3
/UW4me8gr16uhQcbbM5vhT7Yrb0J0W1xruMlQiO2JNDG9r1RQx2OSK1yi0pPBLLOAlVkKSsgWZbS
tIQhtAj4DXc1oOc5vjpuzgyZ5MsedeXKnOkmG8dO+YW3o63NkPAu9Pl4lAB7oGQEnvua9zRMAsi0
edkVgJdX2DsBhIkBrWZRXQ3TUKGFyrcemkBYBAN/p3IwcmqxU8VD8smJrfUw5ftrr5164WnARz6x
2zZZlLCtzlHvT3Onbva+EKM3a4AioOcXu6Kjag==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VT7lyAYu7/weMOfLvOM+SHZmAAVV6GMaD3gr7ZSNU8JfV9HIoUTxp6J0mJdeOKs3tYYlqi6cF+Qo
F8YCUKXluoy1gcptygDK7q//Xh7zBwLcSKdoUJr/Arnk4ijKQuEZ9JjH98tsD1GIA6B0EUQRclHC
FwSksULSbpayYa7tjvYuijf3sJDtJFxV+GTeKDKTRe8W0jHosQUN+0aKY8WRP/nt7ccDxmn0IZyv
NYwNf0lrWjEC4Ki1WiMukH+NDrbYZZ4V7XSuq11etS2vz0dQpM0oVQxT3DWkod7qrSaHvHyK9moY
KzDcXWkyU3VpqGrxPWl9DJP6lEv2rVhdkpjMbA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XgmFRGaDq2b3xpHvzH+IwGP/IQNDsWlcao685okhs0AfoeD4RtvYCy+nfvG7Y5DWm1xA4Wa046Ju
gEBXPOzaNoAltTfF+odHBTEi+5zMk9gbAJjMmAmBq1RIDStwIFRdEfdyaG+BfFkpmz+MiAGgdUn2
avVOBrCw9WUXA0b+vy0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pjB2Cz+0cSVKp4du1DXMN5l66IUTXx3HaY0OfcBMe+msmACV9SKLQqpbiwy2Glq6Nzrvx960qHGd
FjDXHMKbGPzR33ri6HWVEvLoTZbPfVkX6Jn/yPiNAUbCYBZ6kq0pXUAH3rpN1nE+Eg0wUdWaE9dJ
46214wdWThgp/a2oUEhsBDNuz850Vvo9f3HJGHeUizN/IviKOQCBxQstk1qRDYXVGyiW/vtBTPCL
wVJAZ1C0anyhQAS40N1AKpX8bV9joriwf9jvkmWmBSZB/t12s9UVHmf4Wjyk3vJ2u5s5QKMwb1ag
7LyWm/+cXV1dKHMIaYTLYX6X86whqonJjzSw6g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
okh01Iv/slqWL/t1L0xuvodPmhGAi826/I7t8zBqvzv3lYUWbGGPfSamR09akH6+yKAVg9awckz4
6YJzrWDl9zwM9tEunUSC/uubJmbXa4XEqOY1Rcu9f0a4/K31sRvahz2eexHWb8aGVUoDCmsefNU4
pJ3sh44YuD9BCtB4bhogb0cQtGek7T8eS5ngWNW2IUWiRC9a3gXjSK5/sVI5CoFVCIa0r8DtptoX
Gi/z/7VzZ+7q8QXzpeUKneOKATZ/CPb+khOdQVDs8MP0cfgvQUKO/7dPmGC/JwMVi/dGOFBNgESv
7TJ56aTSlkMAONs5yBQeWiB+rr8pGRo4FXoy5A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pP7JisAcvX2DVLVC2bAydpTZjS/aaVEqG6U/PA6lVfhkNjwSvcWJLIPKoUba+7z0HVDgfKYJR9BN
uifKYmOQSoTFa7hD8BREct2Xok8rDILQ/Ja99AmK+JIQG75f3BPWgKkUEm7HZrVFvY/EoA9pVsc8
5IXQ4iY06ZtyzP7Br1NnH7FHytbKxzGMX4TQXUO0re32f4LBCvYVQbGRqKE81Jr7UhWaJ2bGZnn7
JhL4vngy8JXJMYmi2x2T75qQxFheT6U6gkioUPpp/LLKVyylEVXeW9UVgPrjAU8dvNoIqelH+0Op
f8D9oKWzecjBTPshSvCnfdNM4vfyTU7kHw2bnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33472)
`pragma protect data_block
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
Uv8AqcTKTFvq5UugJQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
