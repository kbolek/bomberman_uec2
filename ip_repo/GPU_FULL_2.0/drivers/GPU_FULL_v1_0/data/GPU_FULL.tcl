

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "GPU_FULL" "NUM_INSTANCES" "DEVICE_ID"  "C_S_TEXTURE_AXI_BASEADDR" "C_S_TEXTURE_AXI_HIGHADDR" "C_S_BLOCK_AXI_BASEADDR" "C_S_BLOCK_AXI_HIGHADDR"
}
