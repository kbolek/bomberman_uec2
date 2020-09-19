onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BLOCK_GPU_0_opt

do {wave.do}

view wave
view structure
view signals

do {BLOCK_GPU_0.udo}

run -all

quit -force
