// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 28 11:05:50 2023
// Host        : DESKTOP-KELFSKD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_48_tst_sim_netlist.v
// Design      : dsp_48_tst
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_48_tst,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "31" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
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
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "16" *) (* C_B_WIDTH = "16" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "31" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [15:0]A;
  input [15:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [31:0]P;
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

  wire [15:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [15:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [31:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "31" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
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
        .SEL(1'b0));
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
csr3qTVRXLNGnk9G4VaY6HwJ22ezWC+SKl9ZsXZ27m6EQfBd4nshq56Ys/etsH5AhI0ab1aaQsOc
dfGxreg0cS3YFSpv5Nm9tHA9lsftbRWllFNiTAdKAog3lZCDzDjgfcBupXkRVrMMMwnj/T2bIq0+
3jMwvo7MfLiJPja61vHLfngItCa1pBPFf3qCal5irABmw/yht53FC0qLlZzLph7DYPrTAmK+9r2X
jo/byOOwmII9FxtnnEokFjDQkpHLB0zuzkGRcc2zS5cQcGVhsj+ntDXf0gE3MnBJMqEawcRhkHIE
Rs0Nu+3D+oIIDYRyAeMPK45PLRrYXBO4SuVjaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzHLRTWEZUPhzQkAXBjdYWLA0aei94bXT+DqE5a2HT1Q4TEMxttkcgfNBlOpsZz+jON7Ht46tZUr
bz36pX8xDwy5er6BeleMF+SF4roJJiBOgI6vEoLtMiPEA0bbb8sL8JhqvxGCjEmu2pPvzFzV7CtD
Wc2TdZHvCUM4wQj3AstR1Sezo1B7vkelfXZcm3u9rCtU3ENAksozgfhnUmYmHo+yKDv0O4fG3xVO
a8RRH7k0aFTT9+l3kQXA2ITgdVcXtPJp+IKZSVFi98hYdO3tCcCrm4A5YvAUKWmi8xqoU170QyOz
vl3iJkps1/96g9JCyMwRJ7xWpl9eEBgc+evWtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
1cociltRKtfXtHS3LiU=
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
