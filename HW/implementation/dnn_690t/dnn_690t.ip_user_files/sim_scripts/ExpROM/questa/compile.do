vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_2

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2

vlog -work xil_defaultlib -64 -sv \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \

vcom -work xpm -64 -93 \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 \
"../../../../dnn_690t.srcs/sources_1/ip/ExpROM/sim/ExpROM.v" \

vlog -work xil_defaultlib \
"glbl.v"

