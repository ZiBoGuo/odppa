-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dnn_690t.srcs/sources_1/ip/FIFO_W96_D512/sim/FIFO_W96_D512.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

