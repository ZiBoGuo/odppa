onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ExpROM_opt

do {wave.do}

view wave
view structure
view signals

do {ExpROM.udo}

run -all

quit -force
