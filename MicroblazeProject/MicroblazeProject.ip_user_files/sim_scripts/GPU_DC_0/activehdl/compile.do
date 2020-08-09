vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/drivers/GPU_DC_v1_0/src" \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/drivers/GPU_DC_v1_0/src" \
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

