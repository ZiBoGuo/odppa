//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Sat Sep 15 15:36:25 2018
//Host        : satellite running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper_addr13
   (DDR2_addr,
    DDR2_ba,
    DDR2_cas_n,
    DDR2_ck_n,
    DDR2_ck_p,
    DDR2_cke,
    DDR2_cs_n,
    DDR2_dm,
    DDR2_dq,
    DDR2_dqs_n,
    DDR2_dqs_p,
    DDR2_odt,
    DDR2_ras_n,
    DDR2_we_n,
    DE,
    RE,
    diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    uart_rx,
    uart_tx);
  output [13:0]DDR2_addr;
  output [2:0]DDR2_ba;
  output DDR2_cas_n;
  output [3:0]DDR2_ck_n;
  output [3:0]DDR2_ck_p;
  output [0:0]DDR2_cke;
  output [0:0]DDR2_cs_n;
  output [7:0]DDR2_dm;
  inout [63:0]DDR2_dq;
  inout [7:0]DDR2_dqs_n;
  inout [7:0]DDR2_dqs_p;
  output [0:0]DDR2_odt;
  output DDR2_ras_n;
  output DDR2_we_n;
output DE;
output RE;
input diff_clock_rtl_clk_n;
input diff_clock_rtl_clk_p;
input uart_rx;
output uart_tx;

  wire [13:0]DDR2_addr;
  wire [2:0]DDR2_ba;
  wire DDR2_cas_n;
  wire [3:0]DDR2_ck_n;
  wire [3:0]DDR2_ck_p;
  wire [0:0]DDR2_cke;
  wire [0:0]DDR2_cs_n;
  wire [7:0]DDR2_dm;
  wire [63:0]DDR2_dq;
  wire [7:0]DDR2_dqs_n;
  wire [7:0]DDR2_dqs_p;
  wire [0:0]DDR2_odt;
  wire DDR2_ras_n;
  wire DDR2_we_n;
    wire DE;
    wire RE;
    wire diff_clock_rtl_clk_n;
    wire diff_clock_rtl_clk_p;
    wire uart_rx;
    wire uart_tx;

  design_1 design_1_i
       (.DDR2_addr(DDR2_addr),
        .DDR2_ba(DDR2_ba),
        .DDR2_cas_n(DDR2_cas_n),
        .DDR2_ck_n(DDR2_ck_n),
        .DDR2_ck_p(DDR2_ck_p),
        .DDR2_cke(DDR2_cke),
        .DDR2_cs_n(DDR2_cs_n),
        .DDR2_dm(DDR2_dm),
        .DDR2_dq(DDR2_dq),
        .DDR2_dqs_n(DDR2_dqs_n),
        .DDR2_dqs_p(DDR2_dqs_p),
        .DDR2_odt(DDR2_odt),
        .DDR2_ras_n(DDR2_ras_n),
        .DDR2_we_n(DDR2_we_n),
        .DE(DE),
        .RE(RE),
        .diff_clock_rtl_clk_n(diff_clock_rtl_clk_n),
        .diff_clock_rtl_clk_p(diff_clock_rtl_clk_p),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx));
endmodule
