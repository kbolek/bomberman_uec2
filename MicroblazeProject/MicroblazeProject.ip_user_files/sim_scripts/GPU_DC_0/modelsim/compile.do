vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -sv "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/drivers/GPU_DC_v1_0/src" \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/drivers/GPU_DC_v1_0/src" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/BLOCK_GEN.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/CHAR_ROM.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/CLOCKER.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/hdl/GPU_DC_v1_0_AXI_LITE.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/GRAM_DECODER.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/TEXT_GEN.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/TIMING_GEN.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/hdl/GPU_DC_v1_0.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/sim/GPU_DC_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

