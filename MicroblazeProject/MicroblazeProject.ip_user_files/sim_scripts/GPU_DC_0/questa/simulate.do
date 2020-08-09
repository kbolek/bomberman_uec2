onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib GPU_DC_0_opt

do {wave.do}

view wave
view structure
view signals

do {GPU_DC_0.udo}

run -all

quit -force
