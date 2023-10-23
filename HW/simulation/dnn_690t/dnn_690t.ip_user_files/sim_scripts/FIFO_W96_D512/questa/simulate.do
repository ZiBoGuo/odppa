onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_W96_D512_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_W96_D512.udo}

run -all

quit -force
