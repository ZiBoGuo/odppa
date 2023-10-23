-makelib ies_lib/xil_defaultlib -sv \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../dnn_690t.srcs/sources_1/ip/ExpROM/sim/ExpROM.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

