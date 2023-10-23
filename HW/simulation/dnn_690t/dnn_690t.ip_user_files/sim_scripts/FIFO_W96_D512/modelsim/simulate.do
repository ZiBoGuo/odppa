onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L fifo_generator_v13_2_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.FIFO_W96_D512 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {FIFO_W96_D512.udo}

run -all

quit -force
