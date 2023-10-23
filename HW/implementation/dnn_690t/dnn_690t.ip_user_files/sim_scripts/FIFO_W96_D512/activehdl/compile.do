vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/fifo_generator_v13_2_3

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3

vlog -work xil_defaultlib  -sv2k12 \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \

vcom -work xpm -93 \
"E:/development_tools/vivado201803/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../dnn_690t.srcs/sources_1/ip/FIFO_W96_D512/sim/FIFO_W96_D512.v" \

vlog -work xil_defaultlib \
"glbl.v"

