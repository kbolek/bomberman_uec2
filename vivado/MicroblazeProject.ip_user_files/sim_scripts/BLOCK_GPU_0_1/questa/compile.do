vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/drivers/BLOCK_GPU_v1_0/src" "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/src" \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/drivers/BLOCK_GPU_v1_0/src" "+incdir+../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/src" \
"../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/hdl/BLOCK_GPU_v1_0_AXI_LITE.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/hdl/BLOCK_GPU_v1_0.v" \
"../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/sim/BLOCK_GPU_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
