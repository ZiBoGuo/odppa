onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bram32_512_opt

do {wave.do}

view wave
view structure
view signals

do {bram32_512.udo}

run -all

quit -force
