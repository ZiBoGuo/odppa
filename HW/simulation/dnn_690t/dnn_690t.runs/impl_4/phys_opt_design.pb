
g
Command: %s
53*	vivadotcl26
"phys_opt_design -directive Explore2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx690t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx690t2default:defaultZ17-349h px� 
i
)Directive used for phys_opt_design is: %s68*	vivadotcl2
Explore2default:defaultZ4-137h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.142default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
959862default:default2
1125052default:defaultZ17-722h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
82default:defaultZ32-721h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1782default:default2
-1.0072default:defaultZ32-619h px� 
T
?Phase 1 Physical Synthesis Initialization | Checksum: d8a435da
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:57 ; elapsed = 00:00:38 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1782default:default2
-1.0072default:defaultZ32-619h px� 
t

Phase %s%s
101*constraints2
2 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
192default:default2
nets2default:defaultZ32-76h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2b
%uut_Core_1/uut_EU0/u_DSP_ARRAY/result%uut_Core_1/uut_EU0/u_DSP_ARRAY/result2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_2_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_2_n_02default:default2
32default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Tuut_Core_2/uut_cmd/uut_cmd_interpretation/mmu_weight_rd_addr_cmd_base_reg[4]_rep_n_0Tuut_Core_2/uut_cmd/uut_cmd_interpretation/mmu_weight_rd_addr_cmd_base_reg[4]_rep_n_02default:default2
32default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Fuut_Core_1/uut_MMU/compute_result_write/axi_write_len_r[35]_i_1__0_n_0Fuut_Core_1/uut_MMU/compute_result_write/axi_write_len_r[35]_i_1__0_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rdata[509]_INST_0_i_2_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rdata[509]_INST_0_i_2_n_02default:default2
22default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_buf_indx.ram_init_done_r_lcl_reg�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_buf_indx.ram_init_done_r_lcl_reg2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1_n_0Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_awaddr_r[35]_i_1__1_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_awaddr_r[35]_i_1__1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1_n_0@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1_n_02default:default8Z32-572h px� 
�
-Processed net %s. Net driver %s was replaced
317*physynth2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2_n_0@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2_n_02default:default2�
<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2	<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_22default:default8Z32-601h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Guut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1__1_n_0Guut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1__1_n_02default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
42default:default2
nets2default:default2
82default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
42default:default2!
nets or cells2default:default2
82default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1782default:default2
-1.0072default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.292default:default2
00:00:00.292default:default2
	10389.5162default:default2
0.0002default:default2
956702default:default2
1121892default:defaultZ17-722h px� 
G
2Phase 2 Fanout Optimization | Checksum: 1b7f16dfa
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:00:55 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95668 ; free virtual = 1121892default:defaulth px� 
}

Phase %s%s
101*constraints2
3 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
2502default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg2default:default2�
Iuut_Core_2/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35__31	Iuut_Core_2/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35__312default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[4]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[4]2default:default2�
Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__41	Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__412default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_3Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_32default:default2�
6uut_Core_2/uut_cmd/uut_cmd_interpretation/i___1_i_1__0	6uut_Core_2/uut_cmd/uut_cmd_interpretation/i___1_i_1__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Nuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_readyNuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_ready2default:default2�
Muut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg	Muut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_0Wuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_02default:default2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5__0	Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]2default:default2�
Suut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__0	Suut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_1/uut_cmd/uut_cmd_interpretation/read_act_valid_reg<uut_Core_1/uut_cmd/uut_cmd_interpretation/read_act_valid_reg2default:default2�
Euut_Core_1/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35	Euut_Core_1/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_352default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Kuut_Core_1/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_3Kuut_Core_1/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_32default:default2~
3uut_Core_1/uut_cmd/uut_cmd_interpretation/i___1_i_1	3uut_Core_1/uut_cmd/uut_cmd_interpretation/i___1_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Nuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_readyNuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_ready2default:default2�
Muut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg	Muut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_0Wuut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_02default:default2�
?uut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5	?uut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]2default:default2�
Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__39	Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__392default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[3]Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[3]2default:default2�
Suut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__1	Suut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[1]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[1]2default:default2�
Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__38	Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__382default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[0]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[0]2default:default2�
Uuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_18__31	Uuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_18__312default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[4]Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[4]2default:default2�
Suut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__2	Suut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_02default:default2�
@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9	@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_0Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_02default:default2�
>uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0	>uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1535]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1535]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1_n_02default:default2�
@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1	@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
~uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/gen_fwft.ram_regout_en~uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/gen_fwft.ram_regout_en2default:default2�
�uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst_i_3	�uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst_i_32default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/fifo_rd_en3uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/fifo_rd_en2default:default2�
Iuut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data_i_1__1	Iuut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data_i_1__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[2]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[2]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/compute_result_write/axi_1_wlast[0]6uut_Core_1/uut_MMU/compute_result_write/axi_1_wlast[0]2default:default2�
6uut_Core_1/uut_MMU/compute_result_write/design_1_i_i_3	6uut_Core_1/uut_MMU/compute_result_write/design_1_i_i_32default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/S_WREADY0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/S_WREADY02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[2]_INST_0_i_5	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[2]_INST_0_i_52default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_3	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_avalid�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_avalid2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_1�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_12default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count[9]_i_1__1_n_0�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count[9]_i_1__1_n_02default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count[9]_i_1__1	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count[9]_i_1__12default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Wuut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[2]_1Wuut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[2]_12default:default2�
;uut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___7	;uut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___72default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@uut_Core_1/uut_cmd/uut_cmd_interpretation/ram_clean[0][31]_25[2]@uut_Core_1/uut_cmd/uut_cmd_interpretation/ram_clean[0][31]_25[2]2default:default2�
<uut_Core_1/uut_cmd/uut_cmd_interpretation/wr_count[9]_i_4__0	<uut_Core_1/uut_cmd/uut_cmd_interpretation/wr_count[9]_i_4__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg__0[0]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg__0[0]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg[0]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg__0[1]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg__0[1]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg[1]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg__0[2]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg__0[2]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg[2]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[2].u_RAM_INST/wr_count_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2b
%uut_Core_1/uut_EU0/u_DSP_ARRAY/result%uut_Core_1/uut_EU0/u_DSP_ARRAY/result2default:default2~
3uut_Core_1/uut_EU0/u_DSP_ARRAY/result[7][47]_i_1__0	3uut_Core_1/uut_EU0/u_DSP_ARRAY/result[7][47]_i_1__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2\
"ddr_user_300mhz_rst_r2_reg_rep_n_0"ddr_user_300mhz_rst_r2_reg_rep_n_02default:default2T
ddr_user_300mhz_rst_r2_reg_rep	ddr_user_300mhz_rst_r2_reg_rep2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[36]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[36]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][36]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][36]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[37]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[37]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][37]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][37]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[39]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[39]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][39]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][39]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_12default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[1]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[186]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[186]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[698]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[698]_INST_02default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[698]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[698]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[698]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[698]_INST_0_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_init_val_reg[4][0]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_init_val_reg[4][0]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_dec_val[5]_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_dec_val[5]_i_12default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[3]_i_3_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[3]_i_3_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[3]_i_3	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[3]_i_32default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/wl_po_fine_cnt_sel_0[1]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/wl_po_fine_cnt_sel_0[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[1]_i_3	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[1]_i_32default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[5]_i_3_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[5]_i_3_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[5]_i_3	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[5]_i_32default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[1]_i_7_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[1]_i_7_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[1]_i_7	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/mb_wrlvl_inst.u_ddr_phy_wrlvl/stg3_inc_val[1]_i_72default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_lim/stg3_dec_val[2]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_lim/stg3_dec_val[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_lim/stg3_dec_val_reg[2]	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_lim/stg3_dec_val_reg[2]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[0]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/clearuut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/clear2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count[9]_i_1	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count[9]_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@uut_Core_1/uut_cmd/uut_cmd_interpretation/ram_clean[0][31]_25[0]@uut_Core_1/uut_cmd/uut_cmd_interpretation/ram_clean[0][31]_25[0]2default:default2�
<uut_Core_1/uut_cmd/uut_cmd_interpretation/wr_count[9]_i_4__2	<uut_Core_1/uut_cmd/uut_cmd_interpretation/wr_count[9]_i_4__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg__0[6]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg__0[6]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[6]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg__0[7]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg__0[7]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[7]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg__0[8]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg__0[8]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[8]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[9]_0[0]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[9]_0[0]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[9]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[0].u_RAM_INST/wr_count_reg[9]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
uuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/m_axi_awvalid[1]uuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/m_axi_awvalid[1]2default:default2�
|uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/m_axi_awvalid[1]_INST_0	|uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/m_axi_awvalid[1]_INST_02default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/s_axi_awburst_0_sn_1�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/s_axi_awburst_0_sn_12default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/GEN_NARROW_CNT.narrow_addr_int[5]_i_5	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/GEN_NARROW_CNT.narrow_addr_int[5]_i_52default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
iuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/Q[1]iuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/Q[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/gen_arbiter.m_target_hot_i_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/gen_arbiter.m_target_hot_i_reg[1]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_12_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_12_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_12	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_122default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_21_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_21_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_21	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_212default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[3]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[3]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/s_axi_awsize_2_sn_1�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/s_axi_awsize_2_sn_12default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_8	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int[5]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[3]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[3]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[0]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[0]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[2]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[2]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[0]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[2]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[2]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[2]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Kuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_tempKuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp2default:default2�
Ruut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp[4]_i_1	Ruut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp[4]_i_12default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Zuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[1]_rep_n_0Zuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[1]_rep_n_02default:default2�
Vuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[1]_rep	Vuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[1]_rep2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Nuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/current_state_reg[0]_0Nuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/current_state_reg[0]_02default:default2�
Quut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/xpm_fifo_sync_inst_i_2__0	Quut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/xpm_fifo_sync_inst_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Xuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_4_n_0Xuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_4_n_02default:default2�
Tuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_4	Tuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Puut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[0]Puut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[0]2default:default2�
Tuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r_reg[0]	Tuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r_reg[0]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Yuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_10_n_0Yuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_10_n_02default:default2�
Uuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_10	Uuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_renew_length_r[5]_i_102default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/mux_wrdata_en�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/mux_wrdata_en2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/wr_ptr[3]_i_3	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/wr_ptr[3]_i_32default:default8Z32-663h px� 
�	
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/of_pre_fifo_gen.u_ddr_of_pre_fifo/my_empty_reg[1]_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/of_pre_fifo_gen.u_ddr_of_pre_fifo/my_empty_reg[1]_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/of_pre_fifo_gen.u_ddr_of_pre_fifo/out_fifo_i_1__3	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/of_pre_fifo_gen.u_ddr_of_pre_fifo/out_fifo_i_1__32default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
{uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/mc_wrdata_en{uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/mc_wrdata_en2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/cmd_pipe_plus.mc_wrdata_en_reg	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/cmd_pipe_plus.mc_wrdata_en_reg2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
juut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/Q[75]juut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/Q[75]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_mesg_i_reg[75]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_mesg_i_reg[75]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_13__0_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_13__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_13__0	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_13__02default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/D[1]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/D[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_21_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_21_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_21	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_212default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__0_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__0	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__0_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__0	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__02default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/narrow_addr_int[1]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/narrow_addr_int[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
juut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/Q[74]juut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/Q[74]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_mesg_i_reg[74]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_mesg_i_reg[74]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[3]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[3]2default:default2�
Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__40	Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__402default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/E[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/E[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/ADDR_SNG_PORT.bram_addr_int[11]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/ADDR_SNG_PORT.bram_addr_int[11]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/curr_wrap_burst_reg_reg_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/curr_wrap_burst_reg_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/ADDR_SNG_PORT.bram_addr_int[17]_i_5	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/ADDR_SNG_PORT.bram_addr_int[17]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/sng_bram_addr_ld_en�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/sng_bram_addr_ld_en2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/ADDR_SNG_PORT.bram_addr_int[17]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/GEN_ARB.I_SNG_PORT/ADDR_SNG_PORT.bram_addr_int[17]_i_22default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_3_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_3_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_32default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7uut_Core_1/uut_MMU/compute_result_write/axi_1_wvalid[0]7uut_Core_1/uut_MMU/compute_result_write/axi_1_wvalid[0]2default:default2�
6uut_Core_1/uut_MMU/compute_result_write/design_1_i_i_4	6uut_Core_1/uut_MMU/compute_result_write/design_1_i_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
luut_Core_1/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/emptyluut_Core_1/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/empty2default:default2�
�uut_Core_1/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/gen_fwft.empty_fwft_i_reg	�uut_Core_1/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/gen_fwft.empty_fwft_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/save_init_bram_addr_ld[11]_i_3_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/save_init_bram_addr_ld[11]_i_3_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/save_init_bram_addr_ld[11]_i_3	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/save_init_bram_addr_ld[11]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/ADDR_SNG_PORT.bram_addr_int[17]_i_6_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/ADDR_SNG_PORT.bram_addr_int[17]_i_6_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/ADDR_SNG_PORT.bram_addr_int[17]_i_6	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/I_WRAP_BRST/ADDR_SNG_PORT.bram_addr_int[17]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/storage_data1_reg[1]_2�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/storage_data1_reg[1]_22default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
tuut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/Q[2]tuut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/Q[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/ADDR_SNG_PORT.bram_addr_int_reg[8]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/ADDR_SNG_PORT.bram_addr_int_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
tuut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/Q[3]tuut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/Q[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/ADDR_SNG_PORT.bram_addr_int_reg[9]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/ADDR_SNG_PORT.bram_addr_int_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[0]Buut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[0]2default:default2�
Quut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_18	Quut_Core_1/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_182default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count[9]_i_1__2_n_0�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count[9]_i_1__2_n_02default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count[9]_i_1__2	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count[9]_i_1__22default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@uut_Core_1/uut_cmd/uut_cmd_interpretation/ram_clean[0][31]_25[3]@uut_Core_1/uut_cmd/uut_cmd_interpretation/ram_clean[0][31]_25[3]2default:default2�
9uut_Core_1/uut_cmd/uut_cmd_interpretation/wr_count[9]_i_4	9uut_Core_1/uut_cmd/uut_cmd_interpretation/wr_count[9]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[4]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[4]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[4]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[5]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[5]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[5]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[9]_0[0]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[9]_0[0]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[9]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[9]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val_reg[5]_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val_reg[5]_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_rd_wait_r[3]_i_8	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_rd_wait_r[3]_i_82default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_2_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_2_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_2	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/po_rd_wait_r[3]_i_3_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/po_rd_wait_r[3]_i_3_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/po_rd_wait_r[3]_i_3	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/po_rd_wait_r[3]_i_32default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val[0]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val_r[0]_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val_r[0]_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_22_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_22_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_22	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_222default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_1_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/Q[0]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/Q[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/po_counter_read_val_reg[0]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/po_counter_read_val_reg[0]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/oclk_calib.u_ddr_phy_oclkdelay_cal/u_ocd_cntlr/byte_r_reg[2]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_reg2[5]�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_reg2[5]2default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_reg2_reg[5]	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_reg2_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_1_n_0�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_1_n_02default:default2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_1	}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_12default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_2_n_0�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_2_n_02default:default2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_2	}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_22default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_4_n_0�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_4_n_02default:default2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_4	}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_42default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
yuut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_selyuut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel2default:default2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_reg	}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_reg2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[41]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[41]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][41]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][41]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[42]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[42]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][42]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][42]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[45]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[45]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][45]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][45]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[46]6uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][47]_0[46]2default:default2x
0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][46]	0uut_Core_1/uut_EU0/u_DSP_ARRAY/result_reg[7][46]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
nuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/grant_hotnuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/grant_hot2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_1__0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_1__02default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/sel_5�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/sel_52default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_issue.active_target_hot[2]_i_8	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_issue.active_target_hot[2]_i_82default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[22]7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[22]2default:default2�
<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[28]	<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[28]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/gen_master_slots[3].r_issuing_cnt_reg[24]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/gen_master_slots[3].r_issuing_cnt_reg[24]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/gen_arbiter.qual_reg[0]_i_2__0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/gen_arbiter.qual_reg[0]_i_2__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
ruut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/carry_local_9ruut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/carry_local_92default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.qual_reg[0]_i_7	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.qual_reg[0]_i_72default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_axi_araddr[63]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_axi_araddr[63]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/gen_arbiter.qual_reg[0]_i_5	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/gen_arbiter.qual_reg[0]_i_52default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
zuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/aa_mi_artarget_hot[0]zuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/aa_mi_artarget_hot[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[1]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_3_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_3_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
9uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]9uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]2default:default2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state_reg[0]	=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_2_wvalid[0]8uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_2_wvalid[0]2default:default2�
7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/design_1_i_i_6	7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/design_1_i_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[2]_INST_0_i_12default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[52]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[52]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[52]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[52]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[53]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[53]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[53]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[53]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[54]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[54]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[54]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[54]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[55]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[55]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[55]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[55]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[56]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[56]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[56]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[56]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[57]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[57]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[57]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[57]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[58]�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[58]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[58]	�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[58]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[0]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[0]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[0]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[1]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[1]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[1]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[2]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[2]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[2]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[3]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[3]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[3]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[6]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[6]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[6]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[7]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[7]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[7]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[8]�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg__0[8]2default:default2�
�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[8]	�uut_Core_1/uut_EU0/uut_FmapCache_top/gen_FmapCache_LOOP1[0].gen_FmapCache_LOOP2[0].u_FampCache/gen_RAM_INST[3].u_RAM_INST/wr_count_reg[8]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val[4]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val[4]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val_r[4]_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/po_counter_read_val_r[4]_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/Q[4]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/Q[4]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/po_counter_read_val_reg[4]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/po_counter_read_val_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_02default:default2�
?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0	?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/current_state[0]_i_1__8_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/current_state[0]_i_1__8_n_02default:default2�
Auut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_read_len_r[35]_i_4__0	Auut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_read_len_r[35]_i_4__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__0_n_0?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__0_n_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__0	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[0]6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[0]2default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[6]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[6]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[26]7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[26]2default:default2�
<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[32]	<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[32]2default:default8Z32-663h px� 
�	
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_en�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_en2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/mem_reg_0_3_0_5_i_1__1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/mem_reg_0_3_0_5_i_1__12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/col_mach0/not_strict_mode.bypass__0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/col_mach0/not_strict_mode.bypass__02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/col_mach0/rd_buf_indx.rd_buf_indx_r[1]_i_2	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/mc0/col_mach0/rd_buf_indx.rd_buf_indx_r[1]_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/app_rd_data_valid_ns0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/app_rd_data_valid_ns02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/not_strict_mode.app_rd_data_valid_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/not_strict_mode.app_rd_data_valid_i_12default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/init_complete_r1_timing_reg_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/init_complete_r1_timing_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/i___87_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/i___87_i_12default:default8Z32-663h px� 
�	
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_3__5_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_3__5_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_3__5	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_3__52default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1023]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1023]_INST_0_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/if_empty_r_0[3]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/if_empty_r_0[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/if_empty_r[0]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/if_empty_r[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]2default:default8Z32-662h px� 
�	
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/if_empty�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/if_empty2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_12default:default8Z32-662h px� 
�	
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/B_byte_rd_en�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/B_byte_rd_en2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_7__0	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_7__02default:default8Z32-663h px� 
�

(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_4__6	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/wr_ptr[1]_i_4__62default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_data_en�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_data_en2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/not_strict_mode.rd_buf.rd_buffer_ram[0].RAM32M0_i_8	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/not_strict_mode.rd_buf.rd_buffer_ram[0].RAM32M0_i_82default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/rd_buf_indx_ns[3]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/rd_buf_indx_ns[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/rd_buf_indx.rd_buf_indx_r[3]_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/rd_buf_indx.rd_buf_indx_r[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_1�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_12default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_32default:default8Z32-662h px� 
�

(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/dq_gen_40.if_post_fifo_gen.if_empty_r_reg[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_2	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_22default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
}uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/ADDRA[3]}uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/ADDRA[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/rd_buf_indx.rd_buf_indx_r_reg[3]	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/rd_buf_indx.rd_buf_indx_r_reg[3]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[27]7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[27]2default:default2�
<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[33]	<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[33]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
|uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i|uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i2default:default2�
�uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/gen_sdpram.xpm_memory_base_inst_i_2	�uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/gen_sdpram.xpm_memory_base_inst_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_3_n_0�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_3_n_02default:default2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_3	}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_32default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_5_n_0�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_5_n_02default:default2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_5	}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel_i_52default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
juut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/Q[76]juut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/Q[76]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_mesg_i_reg[76]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_mesg_i_reg[76]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
nuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/grant_hotnuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/grant_hot2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/gen_arbiter.last_rr_hot[2]_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_aw/gen_arbiter.last_rr_hot[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_single_thread.active_target_enc_reg[1]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_single_thread.active_target_enc_reg[1]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_arbiter.qual_reg[2]_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_arbiter.qual_reg[2]_i_22default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1023]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1023]_INST_0_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/st_aa_awtarget_hot[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/st_aa_awtarget_hot[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_arbiter.m_target_hot_i[3]_i_3__0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_arbiter.m_target_hot_i[3]_i_3__02default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_single_thread.active_target_enc_reg[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_single_thread.active_target_enc_reg[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_arbiter.last_rr_hot[2]_i_5	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/b.b_pipe/gen_arbiter.last_rr_hot[2]_i_52default:default8Z32-662h px� 
�	
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_9__4�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_9__42default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_arbiter.m_target_hot_i[3]_i_8	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_arbiter.m_target_hot_i[3]_i_82default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/Q[85]�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/Q[85]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[85]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[85]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_3	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
_uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/ua_narrow_load0_carry_i_18_n_0_uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/ua_narrow_load0_carry_i_18_n_02default:default2�
[uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/ua_narrow_load0_carry_i_18	[uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/ua_narrow_load0_carry_i_182default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/addr_pong[1]�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/addr_pong[1]2default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/use_RAM32M16.uut_inst_pong_i_4__1018	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/use_RAM32M16.uut_inst_pong_i_4__10182default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/B[15]�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/B[15]2default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_1__1015	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_1__10152default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en_temp_reg[17]_rep_1Wuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en_temp_reg[17]_rep_12default:default2�
Uuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en_temp_reg[17]_rep	Uuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en_temp_reg[17]_rep2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/first_q[16]�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/first_q[16]2default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/opt_has_pipe.first_q_reg[16]	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[8].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/opt_has_pipe.first_q_reg[16]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[15]7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[15]2default:default2�
<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[21]	<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[21]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[16]7uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[16]2default:default2�
<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[22]	<uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[22]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[2]6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[2]2default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[8]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[8]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[3]6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr0[3]2default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[9]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r_reg[9]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/storage_data1_reg[1]_2�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/storage_data1_reg[1]_22default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/m_axi_wvalid[1]_INST_0_i_12default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[21]�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[21]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[21]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[21]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[27]�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[27]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[27]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[27]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[34]�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[34]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[34]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[34]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[6]�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[63]_0[6]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[6]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int_reg[6]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[5]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/D[5]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[5]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_UA_NARROW.I_UA_NARROW/GEN_NARROW_CNT.narrow_addr_int[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[5]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/narrow_addr_int[5]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[5]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_NARROW_CNT.narrow_addr_int_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
>uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1_n_0>uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1_n_02default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Auut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1__0_n_0Auut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1__0_n_02default:default2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1__0	=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/current_state[0]_i_1__2_n_0Cuut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/current_state[0]_i_1__2_n_02default:default2�
>uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_read_len_r[35]_i_4	>uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_read_len_r[35]_i_42default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_axi_rvalid[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_axi_rvalid[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_axi_rvalid[0]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].reg_slice_mi/r.r_pipe/s_axi_rvalid[0]_INST_02default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/st_mr_rid[6]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/st_mr_rid[6]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/m_payload_i_reg[515]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/m_payload_i_reg[515]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2_n_0<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2_n_02default:default2�
8uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2	8uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/s_rvalid_i0[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/s_rvalid_i0[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/s_axi_rvalid[0]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].reg_slice_mi/r.r_pipe/s_axi_rvalid[0]_INST_0_i_32default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[1]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[1]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[2]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[2]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[7]?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[7]2default:default2�
:uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[7]	:uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[7]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[1]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[1]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[2]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[2]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_2_arlen[6]6uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_2_arlen[6]2default:default2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[6]__0	=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[6]__02default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[185]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[185]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[697]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[697]_INST_02default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[697]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[697]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[697]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[697]_INST_0_i_12default:default8Z32-663h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2"
Physopt 32-6632default:default2
1002default:defaultZ17-14h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
1002default:default2
nets2default:default2
1002default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
1002default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
1002default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0582default:default2
-0.1562default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.172default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956732default:default2
1121932default:defaultZ17-722h px� 
P
;Phase 3 Placement Based Optimization | Checksum: 1cc22a633
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:10 ; elapsed = 00:01:17 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
1002default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg2default:default2�
Kuut_Core_2/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35__31/O	Kuut_Core_2/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35__31/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_3Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_32default:default2�
8uut_Core_2/uut_cmd/uut_cmd_interpretation/i___1_i_1__0/O	8uut_Core_2/uut_cmd/uut_cmd_interpretation/i___1_i_1__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Nuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_readyNuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_ready2default:default2�
Ouut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg/Q	Ouut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_0Wuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_02default:default2�
Duut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5__0/O	Duut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_02default:default2�
Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9/O	Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_0Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_02default:default2�
@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0/O	@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0/O	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]/Q	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1_n_02default:default2�
Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1/O	Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]/Q	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_0_wlast[0]7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_0_wlast[0]2default:default2�
9uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/design_1_i_i_1/O	9uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/design_1_i_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]_INST_0/O	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]_INST_0/O2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
12default:default2
net2default:default2
22default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
22default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0582default:default2
-0.1622default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
956742default:default2
1121942default:defaultZ17-722h px� 
T
?Phase 4 MultiInst Placement Optimization | Checksum: 1a4033e93
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:23 ; elapsed = 00:01:21 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
g

Phase %s%s
101*constraints2
5 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
h
.No nets found for rewiring (%s) optimization.
222*physynth2
 2default:defaultZ32-241h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956742default:default2
1121942default:defaultZ17-722h px� 
:
%Phase 5 Rewire | Checksum: 1a4033e93
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:25 ; elapsed = 00:01:23 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
{

Phase %s%s
101*constraints2
6 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
302default:default2
nets2default:defaultZ32-46h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[4]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[4]2default:default2
12default:default8Z32-81h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_3Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_32default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
Nuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_readyNuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_ready2default:default8Z32-571h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_0Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2
12default:default8Z32-81h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]_02default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]_02default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]2default:default8Z32-571h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__3_n_0Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__3_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/s_axi_wready�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/s_axi_wready2default:default2
12default:default8Z32-81h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg_02default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_02default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_0_wlast[0]7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_0_wlast[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
6uut_Core_1/uut_MMU/compute_result_write/axi_1_wlast[0]6uut_Core_1/uut_MMU/compute_result_write/axi_1_wlast[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
<uut_Core_1/uut_MMU/compute_result_write/axi_alwen_r_reg[1]_0<uut_Core_1/uut_MMU/compute_result_write/axi_alwen_r_reg[1]_02default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
|uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i|uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2~
3uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/fifo_rd_en3uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/fifo_rd_en2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default8Z32-571h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
32default:default2
nets2default:default2
32default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
32default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0002default:default2
0.0002default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.372default:default2
00:00:00.362default:default2
	10389.5162default:default2
0.0002default:default2
956722default:default2
1121922default:defaultZ17-722h px� 
N
9Phase 6 Critical Cell Optimization | Checksum: 1944d3ac9
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:35 ; elapsed = 00:01:29 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95673 ; free virtual = 1121932default:defaulth px� 
t

Phase %s%s
101*constraints2
7 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
132default:default2
nets2default:defaultZ32-76h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1_n_0Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1021]_INST_0_i_1_n_02default:default2
32default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Fuut_Core_1/uut_MMU/compute_result_write/axi_write_len_r[35]_i_1__0_n_0Fuut_Core_1/uut_MMU/compute_result_write/axi_write_len_r[35]_i_1__0_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1_n_0@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WR_NO_ECC.bram_we_int[63]_i_1_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2_n_0@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2_n_02default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2b
%uut_Core_1/uut_EU0/u_DSP_ARRAY/result%uut_Core_1/uut_EU0/u_DSP_ARRAY/result2default:default2
22default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Auut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_awaddr_r[35]_i_1_n_0Auut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_awaddr_r[35]_i_1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_awaddr_r[35]_i_1__1_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_awaddr_r[35]_i_1__1_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Guut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1__1_n_0Guut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r[35]_i_1__1_n_02default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
32default:default2
nets2default:default2
72default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
72default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0002default:default2
0.0002default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.232default:default2
00:00:00.232default:default2
	10389.5162default:default2
0.0002default:default2
956742default:default2
1121952default:defaultZ17-722h px� 
G
2Phase 7 Fanout Optimization | Checksum: 14a39cf35
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:58 ; elapsed = 00:01:43 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
}

Phase %s%s
101*constraints2
8 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
2502default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__3_n_0Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__3_n_02default:default2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__3	@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Auut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2_n_0Auut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2_n_02default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_4_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_4_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_4	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_1�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_12default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg<uut_Core_2/uut_cmd/uut_cmd_interpretation/read_act_valid_reg2default:default2�
Iuut_Core_2/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35__31	Iuut_Core_2/uut_cmd/uut_cmd_interpretation/xpm_memory_sdpram_inst_i_35__312default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[2]2default:default2�
Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__39	Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__392default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_3Kuut_Core_2/uut_cmd/uut_cmd_interpretation/FSM_onehot_current_state_reg[2]_32default:default2�
6uut_Core_2/uut_cmd/uut_cmd_interpretation/i___1_i_1__0	6uut_Core_2/uut_cmd/uut_cmd_interpretation/i___1_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Nuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_readyNuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/fmapCache_weight_ready2default:default2�
Muut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg	Muut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_ready_temp_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_0Wuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/FSM_onehot_current_state_reg[3]_02default:default2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5__0	Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/i___1_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[2]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[2]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_0_wlast[0]7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_0_wlast[0]2default:default2�
7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/design_1_i_i_1	7uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/design_1_i_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_3	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/compute_result_write/axi_1_wlast[0]6uut_Core_1/uut_MMU/compute_result_write/axi_1_wlast[0]2default:default2�
6uut_Core_1/uut_MMU/compute_result_write/design_1_i_i_3	6uut_Core_1/uut_MMU/compute_result_write/design_1_i_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_1/uut_MMU/compute_result_write/i__carry_i_3__15_n_0<uut_Core_1/uut_MMU/compute_result_write/i__carry_i_3__15_n_02default:default2�
8uut_Core_1/uut_MMU/compute_result_write/i__carry_i_3__15	8uut_Core_1/uut_MMU/compute_result_write/i__carry_i_3__152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[1].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
|uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i|uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i2default:default2�
�uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/gen_sdpram.xpm_memory_base_inst_i_2	�uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/gen_sdpram.xpm_memory_base_inst_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/fifo_rd_en3uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/fifo_rd_en2default:default2�
Iuut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data_i_1__1	Iuut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/xpm_fifo_async_cache_data_i_1__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1535]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1535]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1023]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1023]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_1�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_12default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
{uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i{uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/ram_rd_en_i2default:default2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/gen_sdpram.xpm_memory_base_inst_i_2	�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdp_inst/gen_sdpram.xpm_memory_base_inst_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[8]_i_2__1_n_0�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[8]_i_2__1_n_02default:default2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[8]_i_2__1	�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[8]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Luut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/fifo_rd_enLuut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/fifo_rd_en2default:default2�
luut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst_i_514	luut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst_i_5142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[2]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[2]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[7]_i_1__3_n_0�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[7]_i_1__3_n_02default:default2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[7]_i_1__3	�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[7]_i_1__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_2�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_22default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[2]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[2]_INST_0_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg_n_0_[7]�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg_n_0_[7]2default:default2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg[7]	�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[2].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_user_i/txcompliance_reg2uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_user_i/txcompliance_reg22default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_user_i/txcompliance_reg2_reg	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_user_i/txcompliance_reg2_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txcompliance_reg2_reg_0�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txcompliance_reg2_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/gth_channel.gthe2_channel_i_i_85	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/gth_channel.gthe2_channel_i_i_852default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].pipe_sync_i/txphaligndone_reg1�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].pipe_sync_i/txphaligndone_reg12default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].pipe_sync_i/txphaligndone_reg1_reg	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].pipe_sync_i/txphaligndone_reg1_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/s_axi_wready_repN�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/s_axi_wready_repN2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/axi_wready_int_mod_reg_replica	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/axi_wready_int_mod_reg_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
>uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1_n_0>uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1_n_02default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_1	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r[7]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]_1[1]Wuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]_1[1]2default:default2�
Ruut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[1]	Ruut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]_INST_0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2_n_0<uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2_n_02default:default2�
8uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2	8uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rlast[0]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[1]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[1]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[2]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[2]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[1]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[1]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[1]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[2]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[2]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[2]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txcompliance_reg2uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txcompliance_reg22default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txcompliance_reg2_reg	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txcompliance_reg2_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].pipe_user_i/SYNC_TXPHINITDONEuut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].pipe_user_i/SYNC_TXPHINITDONE2default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].pipe_user_i/txphinitdone_reg1_i_1	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].pipe_user_i/txphinitdone_reg1_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_sync_i/txphinitdone_reg1uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_sync_i/txphinitdone_reg12default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_sync_i/txphinitdone_reg1_reg	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].pipe_sync_i/txphinitdone_reg1_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r[35]_i_7_n_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r[35]_i_7_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r[35]_i_7	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r[35]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1535]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wdata[1535]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc_2[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[5]_i_1__3_n_0�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[5]_i_1__3_n_02default:default2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[5]_i_1__3	�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i[5]_i_1__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[1]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[5]_0[0]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[5]_0[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[0]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/p_0_in540_in�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/p_0_in540_in2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r_reg[8]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/rdlvl_stg1_done_int�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/rdlvl_stg1_done_int2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r_reg[0]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/ddr_phy_rdlvl_gen.u_ddr_phy_rdlvl/FSM_onehot_cal1_state_r_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg_n_0_[5]�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg_n_0_[5]2default:default2�
�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg[5]	�uut_Core_2/uut_MMU/compute_result_write/xpm_fifo_async_cache_data/gnuram_async_fifo.xpm_fifo_base_inst/rdpp1_inst/count_value_i_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[12].u_primary_compute_unit/u_weights_cache_L2/B[15]�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[12].u_primary_compute_unit/u_weights_cache_L2/B[15]2default:default2�
�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[12].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_1__459	�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[2].gen_compute_unit_LOOP2[12].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_1__4592default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Wuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]_1[4]Wuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]_1[4]2default:default2�
Ruut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]	Ruut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/m00_couplers/m00_data_fifo/inst/gen_fifo.fifo_gen_inst/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/m00_couplers/m00_data_fifo/inst/gen_fifo.fifo_gen_inst/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/m00_couplers/m00_data_fifo/inst/gen_fifo.fifo_gen_inst/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_reg	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/m00_couplers/m00_data_fifo/inst/gen_fifo.fifo_gen_inst/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[1].u_primary_compute_unit/C_temp[0][1][3]_i_10__0_n_0�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[1].u_primary_compute_unit/C_temp[0][1][3]_i_10__0_n_02default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[1].u_primary_compute_unit/C_temp[0][1][3]_i_10__0	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[1].u_primary_compute_unit/C_temp[0][1][3]_i_10__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2r
-uut_Core_2/uut_EU0/u_DSP_ARRAY/result0_in[44]-uut_Core_2/uut_EU0/u_DSP_ARRAY/result0_in[44]2default:default2~
3uut_Core_2/uut_EU0/u_DSP_ARRAY/result[1][44]_i_1__0	3uut_Core_2/uut_EU0/u_DSP_ARRAY/result[1][44]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_2/uut_EU0/u_DSP_ARRAY/result_reg[1][47]_0[44]6uut_Core_2/uut_EU0/u_DSP_ARRAY/result_reg[1][47]_0[44]2default:default2x
0uut_Core_2/uut_EU0/u_DSP_ARRAY/result_reg[1][44]	0uut_Core_2/uut_EU0/u_DSP_ARRAY/result_reg[1][44]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/m_axi_wlast[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Data_Exists_DFF_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bid_int[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/CI2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_3	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/axi_bvalid_int_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/bid_fifo_rd[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_14__0_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_14__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_14__0	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_14__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/D[3]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/D[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__0_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__0	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_13__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_22_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_22_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_22	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_222default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__0_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__0	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_3__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/narrow_addr_int[3]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/narrow_addr_int[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txelecidle_reg2}uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txelecidle_reg22default:default2�
�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txelecidle_reg2_reg	�uut_static_bd_wrapper/design_1_i/xdma_0/inst/pcie3_ip_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].pipe_user_i/txelecidle_reg2_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[5]_0[3]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[5]_0[3]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[3]	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/pi_counter_read_val_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_buf_indx.ram_init_done_r_lcl_reg�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_buf_indx.ram_init_done_r_lcl_reg2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/not_strict_mode.rd_buf.rd_buffer_ram[0].RAM32M0_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/not_strict_mode.rd_buf.rd_buffer_ram[0].RAM32M0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/init_complete_r1_timing_reg_0�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/init_complete_r1_timing_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/i___87_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/i___87_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_data_en�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/rd_data_en2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/not_strict_mode.rd_buf.rd_buffer_ram[0].RAM32M0_i_8	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/not_strict_mode.rd_buf.rd_buffer_ram[0].RAM32M0_i_82default:default8Z32-662h px� 
�	
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/if_empty�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/if_empty2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_12default:default8Z32-662h px� 
�	
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/if_empty_v[0]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/if_empty_v[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_3	�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/dq_gen_40.if_post_fifo_gen.u_ddr_if_post_fifo/phy_if_empty_r_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[0]_INST_0_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[3]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[3]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[3]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[4]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[4]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[4]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[0]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[0]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[0]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[0]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[3]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[3]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[3]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[3]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[4]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[4]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[4]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[4]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[7]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[7]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[7]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[7]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_weights_cache_L2/B[9]�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_weights_cache_L2/B[9]2default:default2�
�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_7__274	�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_7__2742default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/first_q[9]�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/first_q[9]2default:default2�
�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/opt_has_pipe.first_q_reg[9]	�uut_Core_1/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[31].gen_compute_unit_LOOP2[5].u_primary_compute_unit/u_DSP48_MACRO/U0/i_synth/i_synth_option.i_synth_model/i_b2/opt_has_pipe.first_q_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_select_enc[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Yuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]_104[2]Yuut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[4]_104[2]2default:default2�
[uut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/use_RAM32M16.uut_inst_ping_i_3__913	[uut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/use_RAM32M16.uut_inst_ping_i_3__9132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[27].gen_compute_unit_LOOP2[11].u_primary_compute_unit/u_weights_cache_L2/B[15]�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[27].gen_compute_unit_LOOP2[11].u_primary_compute_unit/u_weights_cache_L2/B[15]2default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[27].gen_compute_unit_LOOP2[11].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_1__913	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[27].gen_compute_unit_LOOP2[11].u_primary_compute_unit/u_weights_cache_L2/u_DSP48_MACRO_i_1__9132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9_n_02default:default2�
@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__9	@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_1__92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_0Buut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0_n_02default:default2�
>uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__0	>uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r[5]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_11__0_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_11__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_11__0	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load0_carry_i_11__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1_n_0Duut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1_n_02default:default2�
@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__1	@uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/current_state[0]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_12__0_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_12__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_12__0	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/ua_narrow_load1_carry_i_12__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]_repN�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[0]_repN2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0_replica	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/s_axi_wready[1]_INST_0_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]_0=uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_write/axi_alwen_r_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_axi_wready[2]_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[2]_INST_0_i_2	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/s_axi_wready[2]_INST_0_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
nuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/grant_hotnuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/grant_hot2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_1__0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_3__0_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_3__0_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_3__0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot[2]_i_3__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_9__4�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_9__42default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_single_thread.active_target_hot[0]_i_3	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_single_thread.active_target_hot[0]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[85]�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[85]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[85]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[85]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[0]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[0]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[0]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[2]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
zuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/aa_mi_artarget_hot[0]zuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/aa_mi_artarget_hot[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[6]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[6]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[6]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[5]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[5]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[5]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[7]?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg_n_0_[7]2default:default2�
:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[7]	:uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[5]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[5]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[5]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[5]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[6]6uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_0_arlen[6]2default:default2�
=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[6]__0	=uut_Core_1/uut_MMU/uut_DMA/DMA_axi_read/axi_arlen_r_reg[6]__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/S�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/S2default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_1	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/S�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/S2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_1	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].MUXCY_L_I_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[80]�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[80]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[80]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[80]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[3].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[86]�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[86]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[86]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[86]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_1__4_n_0Cuut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_1__4_n_02default:default2�
?uut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_1__4	?uut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_1__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_2__0_n_0Cuut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_2__0_n_02default:default2�
?uut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_2__0	?uut_Core_1/uut_MMU/compute_result_write/current_state[0]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg_n_0_[6]Duut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg_n_0_[6]2default:default2�
?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg[6]	?uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Euut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg_n_0_[16]Euut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg_n_0_[16]2default:default2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg[16]	@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg[16]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Euut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg_n_0_[15]Euut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg_n_0_[15]2default:default2�
@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg[15]	@uut_Core_1/uut_MMU/uut_DMA/DMA_axi_write/axi_write_len_r_reg[15]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0_n_02default:default2�
?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__0	?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/current_state[0]_i_1__8_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/current_state[0]_i_1__8_n_02default:default2�
Auut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_read_len_r[35]_i_4__0	Auut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_read_len_r[35]_i_4__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_single_issue.active_target_enc_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_1_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_1	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__0_n_0?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__0_n_02default:default2�
;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__0	;uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_rready_r_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_0	�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rlast[1]_INST_02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
9uut_Core_2/uut_EU0/u_DSP_ARRAY/C_temp_reg[0][1]__0__0[29]9uut_Core_2/uut_EU0/u_DSP_ARRAY/C_temp_reg[0][1]__0__0[29]2default:default2~
3uut_Core_2/uut_EU0/u_DSP_ARRAY/C_temp_reg[0][1][29]	3uut_Core_2/uut_EU0/u_DSP_ARRAY/C_temp_reg[0][1][29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/D[5]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/D[5]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[5]_i_2	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/narrow_addr_int[5]�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/narrow_addr_int[5]2default:default2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[5]	�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[1]Buut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/ram_rd_en[1]2default:default2�
Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__38	Tuut_Core_2/uut_EU0/uut_FmapCache_top/u_FmapCache_read/xpm_memory_sdpram_inst_i_2__382default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_3__999_n_0�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_3__999_n_02default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_3__999	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_3__9992default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[3]_i_1__999_n_0�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[3]_i_1__999_n_02default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[3]_i_1__999	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[3]_i_1__9992default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
ouut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/Q[3]ouut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/Q[3]2default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr_reg[3]	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_2__999_n_0�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_2__999_n_02default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_2__999	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr[4]_i_2__9992default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
ouut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/Q[4]ouut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/Q[4]2default:default2�
�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr_reg[4]	�uut_Core_2/uut_EU0/u_DSP_ARRAY/gen_compute_unit_LOOP1[8].gen_compute_unit_LOOP2[10].u_primary_compute_unit/weight_rd_addr_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_grant_enc_i_reg_n_0_[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_grant_enc_i_reg_n_0_[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_grant_enc_i_reg[1]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_grant_enc_i_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[3]_0[1]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[2]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.m_target_hot_i_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot_reg_n_0_[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot_reg_n_0_[0]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot_reg[0]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
kuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/p_4_inkuut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/p_4_in2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot_reg[2]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/addr_arbiter_ar/gen_arbiter.last_rr_hot_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[73]�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[73]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[73]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[73]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[79]�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[93]_0[79]2default:default2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[79]	�uut_static_bd_wrapper/design_1_i/axi_interconnect_2/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/goreg_dm.dout_i_reg[79]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].FDRE_I_n_0�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].FDRE_I_n_02default:default2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].FDRE_I	�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/Addr_Counters[0].FDRE_I2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_0Cuut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0_n_02default:default2�
?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__0	?uut_Core_2/uut_MMU/uut_DMA/DMA_axi_read/axi_araddr_r[35]_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/USE_UPSIZER.upsizer_d2/USE_READ.read_addr_inst/USE_REGISTER.M_AXI_AVALID_q_reg_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/USE_UPSIZER.upsizer_d2/USE_READ.read_addr_inst/USE_REGISTER.M_AXI_AVALID_q_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/USE_UPSIZER.upsizer_d2/USE_READ.read_addr_inst/USE_REGISTER.M_AXI_AVALID_q_reg	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/USE_UPSIZER.upsizer_d2/USE_READ.read_addr_inst/USE_REGISTER.M_AXI_AVALID_q_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
]uut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[2]_rep__0_n_0]uut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[2]_rep__0_n_02default:default2�
Yuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[2]_rep__0	Yuut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_addr_temp_reg[2]_rep__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_cmd_arbiter_0/RD_PRI_REG.wr_cmd_hold_reg_0�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_cmd_arbiter_0/RD_PRI_REG.wr_cmd_hold_reg_02default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_cmd_arbiter_0/RD_PRI_REG.rnw_i_i_1	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_cmd_arbiter_0/RD_PRI_REG.rnw_i_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_aw_channel_0/axi_mc_cmd_translator_0/axi_mc_incr_cmd_0/axaddr_incr_reg[31]_0[8]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_aw_channel_0/axi_mc_cmd_translator_0/axi_mc_incr_cmd_0/axaddr_incr_reg[31]_0[8]2default:default2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_aw_channel_0/axi_mc_cmd_translator_0/axi_mc_incr_cmd_0/axaddr_incr_reg[8]	�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_aw_channel_0/axi_mc_cmd_translator_0/axi_mc_incr_cmd_0/axaddr_incr_reg[8]2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
782default:default2
nets2default:default2
782default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
782default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
782default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0122default:default2
0.0002default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.152default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
956732default:default2
1121932default:defaultZ17-722h px� 
P
;Phase 8 Placement Based Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:33 ; elapsed = 00:02:03 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95673 ; free virtual = 1121932default:defaulth px� 
�

Phase %s%s
101*constraints2
9 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth24
 MultiInst Placement Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956732default:default2
1121932default:defaultZ17-722h px� 
T
?Phase 9 MultiInst Placement Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:33 ; elapsed = 00:02:03 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95673 ; free virtual = 1121932default:defaulth px� 
h

Phase %s%s
101*constraints2
10 2default:default2
Rewire2default:defaultZ18-101h px� 
p
0No setup violation found.  %s was not performed.344*physynth2
Rewire2default:defaultZ32-670h px� 
;
&Phase 10 Rewire | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:33 ; elapsed = 00:02:03 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95673 ; free virtual = 1121932default:defaulth px� 
|

Phase %s%s
101*constraints2
11 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
Critical Cell Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956732default:default2
1121932default:defaultZ17-722h px� 
O
:Phase 11 Critical Cell Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:33 ; elapsed = 00:02:03 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95673 ; free virtual = 1121932default:defaulth px� 
{

Phase %s%s
101*constraints2
12 2default:default2-
Slr Crossing Optimization2default:defaultZ18-101h px� 
N
9Phase 12 Slr Crossing Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:34 ; elapsed = 00:02:04 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
u

Phase %s%s
101*constraints2
13 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
}
0No setup violation found.  %s was not performed.344*physynth2'
Fanout Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.142default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
956742default:default2
1121942default:defaultZ17-722h px� 
H
3Phase 13 Fanout Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
~

Phase %s%s
101*constraints2
14 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth20
Placement Based Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.142default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
956742default:default2
1121942default:defaultZ17-722h px� 
Q
<Phase 14 Placement Based Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
�

Phase %s%s
101*constraints2
15 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth24
 MultiInst Placement Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956742default:default2
1121952default:defaultZ17-722h px� 
U
@Phase 15 MultiInst Placement Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121952default:defaulth px� 
h

Phase %s%s
101*constraints2
16 2default:default2
Rewire2default:defaultZ18-101h px� 
p
0No setup violation found.  %s was not performed.344*physynth2
Rewire2default:defaultZ32-670h px� 
;
&Phase 16 Rewire | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95674 ; free virtual = 1121942default:defaulth px� 
|

Phase %s%s
101*constraints2
17 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
Critical Cell Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.142default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
956752default:default2
1121952default:defaultZ17-722h px� 
O
:Phase 17 Critical Cell Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
{

Phase %s%s
101*constraints2
18 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px� 
N
9Phase 18 DSP Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
|

Phase %s%s
101*constraints2
19 2default:default2.
BRAM Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px� 
O
:Phase 19 BRAM Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
|

Phase %s%s
101*constraints2
20 2default:default2.
URAM Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
URAM Register Optimization2default:defaultZ32-670h px� 
O
:Phase 20 URAM Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
}

Phase %s%s
101*constraints2
21 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px� 
P
;Phase 21 Shift Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
{

Phase %s%s
101*constraints2
22 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px� 
N
9Phase 22 DSP Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
|

Phase %s%s
101*constraints2
23 2default:default2.
BRAM Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px� 
O
:Phase 23 BRAM Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
|

Phase %s%s
101*constraints2
24 2default:default2.
URAM Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
URAM Register Optimization2default:defaultZ32-670h px� 
O
:Phase 24 URAM Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
}

Phase %s%s
101*constraints2
25 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px� 
P
;Phase 25 Shift Register Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 
{

Phase %s%s
101*constraints2
26 2default:default2-
Critical Pin Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth2-
Critical Pin Optimization2default:defaultZ32-670h px� 
N
9Phase 26 Critical Pin Optimization | Checksum: 181be0f03
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:35 ; elapsed = 00:02:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121952default:defaulth px� 


Phase %s%s
101*constraints2
27 2default:default21
Very High Fanout Optimization2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
1002default:default2
nets2default:defaultZ32-76h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2
22default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_read.si_transactor_ar/s_axi_rdata[1023]_INST_0_i_1_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[27]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[27]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2b
%uut_Core_2/uut_EU0/u_DSP_ARRAY/C_temp%uut_Core_2/uut_EU0/u_DSP_ARRAY/C_temp2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/f_decoder_return[2]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/f_decoder_return[2]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[0]_02default:default2
22default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_0�uut_static_bd_wrapper/design_1_i/WeightCache1/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_0�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/GEN_WRDATA[511].bram_wrdata_int[511]_i_1_n_02default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rdata[511]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rdata[511]_INST_0_i_1_n_02default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/f_decoder_return[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/f_decoder_return[1]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/f_decoder_return[1]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/f_decoder_return[1]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_02default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/p_1_in�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[2].reg_slice_mi/r.r_pipe/p_1_in2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rdata[509]_INST_0_i_1_n_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/s_axi_rdata[509]_INST_0_i_1_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_02default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/USE_UPSIZER.upsizer_d2/USE_READ.read_data_inst/USE_FPGA_WORD_COMPLETED.word_complete_rest_ready_inst/E[0]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/USE_UPSIZER.upsizer_d2/USE_READ.read_data_inst/USE_FPGA_WORD_COMPLETED.word_complete_rest_ready_inst/E[0]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Cuut_Core_2/uut_EU0/u_DSP_ARRAY/ddr_user_300mhz_rst_r2_reg_rep__8[0]Cuut_Core_2/uut_EU0/u_DSP_ARRAY/ddr_user_300mhz_rst_r2_reg_rep__8[0]2default:default2
32default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_0�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data1_reg[1]_02default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/r.r_pipe/p_1_in�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_master_slots[0].reg_slice_mi/r.r_pipe/p_1_in2default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2p
,uut_Core_2/uut_EU0/u_DSP_ARRAY/c_state_reg_0,uut_Core_2/uut_EU0/u_DSP_ARRAY/c_state_reg_02default:default2
22default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_r_channel_0/rd_data_fifo_0/cnt_read_reg__0[0]�uut_static_bd_wrapper/design_1_i/mig_7series_0/u_design_1_mig_7series_0_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_r_channel_0/rd_data_fifo_0/cnt_read_reg__0[0]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_r_channel_0/rd_data_fifo_0/cnt_read_reg__0[0]�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/u_axi_mc/axi_mc_r_channel_0/rd_data_fifo_0/cnt_read_reg__0[0]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/app_rd_data_valid�uut_static_bd_wrapper/design_1_i/mig_7series_1/u_design_1_mig_7series_1_0_mig/u_memc_ui_top_axi/u_ui_top/ui_rd_data0/app_rd_data_valid2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_single_thread.active_target_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_0/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_single_thread.active_target_enc[0]2default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_thread.active_target_enc[0]�uut_static_bd_wrapper/design_1_i/axi_interconnect_1/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_single_thread.active_target_enc[0]2default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/rddata_mux_sel�uut_static_bd_wrapper/design_1_i/GlobalBuffer/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/rddata_mux_sel2default:default2
22default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/rddata_mux_sel�uut_static_bd_wrapper/design_1_i/GlobalBuffer1/axi_bram_ctrl_0/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/rddata_mux_sel2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/rddata_mux_sel�uut_static_bd_wrapper/design_1_i/WeightCache/axi_bram_ctrl_1/U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/rddata_mux_sel2default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[12]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[12]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[13]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[13]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[14]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[14]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[15]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[15]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[17]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[17]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[18]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[18]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[19]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[19]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[23]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[23]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[24]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[24]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[25]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[25]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[26]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[26]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[27]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[27]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[29]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[29]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Guut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[2]Guut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[2]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[30]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[30]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[31]Huut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[31]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Guut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[6]Guut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[6]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Guut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[9]Guut_Core_1/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[9]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[0]Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[0]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[10]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[10]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[11]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[11]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[12]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[12]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[13]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[13]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[14]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[14]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[15]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[15]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[16]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[16]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[17]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[17]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[18]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[18]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[19]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[19]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[1]Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[1]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[20]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[20]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[21]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[21]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[22]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[22]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[23]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[23]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[24]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[24]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[25]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[25]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[26]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[26]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[28]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[28]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[29]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[29]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[2]Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[2]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[30]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[30]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[31]Huut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[31]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[3]Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[3]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[4]Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[4]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[5]Guut_Core_2/uut_EU0/uut_WeightCache_top/WeightDistribute/weight_wr_en[5]2default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
542default:default2
nets2default:default2
672default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
542default:default2!
nets or cells2default:default2
672default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0122default:default2
0.0002default:defaultZ32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.862default:default2
00:00:00.872default:default2
	10389.5162default:default2
0.0002default:default2
956752default:default2
1121962default:defaultZ17-722h px� 
R
=Phase 27 Very High Fanout Optimization | Checksum: 12fe12023
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:35 ; elapsed = 00:03:26 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121962default:defaulth px� 
~

Phase %s%s
101*constraints2
28 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth20
Placement Based Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956762default:default2
1121962default:defaultZ17-722h px� 
Q
<Phase 28 Placement Based Optimization | Checksum: 12fe12023
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:35 ; elapsed = 00:03:26 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95676 ; free virtual = 1121972default:defaulth px� 
�

Phase %s%s
101*constraints2
29 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
0No setup violation found.  %s was not performed.344*physynth24
 MultiInst Placement Optimization2default:defaultZ32-670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.122default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
956762default:default2
1121972default:defaultZ17-722h px� 
U
@Phase 29 MultiInst Placement Optimization | Checksum: 12fe12023
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:36 ; elapsed = 00:03:26 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95676 ; free virtual = 1121972default:defaulth px� 
|

Phase %s%s
101*constraints2
30 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0122default:default2
0.0002default:defaultZ32-619h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0122default:default2
0.0002default:defaultZ32-619h px� 
O
:Phase 30 Critical Path Optimization | Checksum: 12fe12023
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:42 ; elapsed = 00:03:27 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95676 ; free virtual = 1121962default:defaulth px� 
z

Phase %s%s
101*constraints2
31 2default:default2,
BRAM Enable Optimization2default:defaultZ18-101h px� 
M
8Phase 31 BRAM Enable Optimization | Checksum: 12fe12023
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:44 ; elapsed = 00:03:28 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95675 ; free virtual = 1121962default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
957122default:default2
1122332default:defaultZ17-722h px� 
�
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
0.0122default:default2
0.0002default:defaultZ32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization          |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Fanout                |          0.000  |          0.000  |           15  |              0  |                     7  |           2  |           2  |  00:00:26  |
|  Placement Based       |          0.132  |          0.851  |            0  |              0  |                   178  |           0  |           2  |  00:00:39  |
|  MultiInst Placement   |          0.000  |         -0.005  |            0  |              0  |                     1  |           0  |           1  |  00:00:04  |
|  Rewire                |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  Critical Cell         |          0.058  |          0.162  |            3  |              0  |                     3  |          10  |           1  |  00:00:05  |
|  Slr Crossing          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register         |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register         |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register        |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Critical Pin          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Very High Fanout      |          0.000  |          0.000  |           67  |              0  |                    54  |          14  |           1  |  00:01:18  |
|  BRAM Enable           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  Critical Path         |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  Total                 |          0.190  |          1.007  |           85  |              0  |                   243  |          26  |          11  |  00:02:34  |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.132default:default2
	10389.5162default:default2
0.0002default:default2
957122default:default2
1122322default:defaultZ17-722h px� 
J
5Ending Physical Synthesis Task | Checksum: 12fe12023
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:47 ; elapsed = 00:03:31 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 95745 ; free virtual = 1122652default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
8042default:default2
632default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
phys_opt_design: 2default:default2
00:11:572default:default2
00:04:072default:default2
	10389.5162default:default2
0.0002default:default2
961132default:default2
1126332default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.132default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
961142default:default2
1126362default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.432default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
956292default:default2
1124042default:defaultZ17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:402default:default2
00:00:152default:default2
	10389.5162default:default2
0.0002default:default2
951112default:default2
1123522default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2e
Q/home/hht/gzb/DNN330/DNNv4/418/dnn_690t/dnn_690t.runs/impl_4/user_top_physopt.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:02:452default:default2
00:02:082default:default2
	10389.5162default:default2
0.0002default:default2
958182default:default2
1125702default:defaultZ17-722h px� 


End Record