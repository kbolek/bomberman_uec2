

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "GPU_LITE" "NUM_INSTANCES" "DEVICE_ID"  "C_S_TEXTURES_AXI_BASEADDR" "C_S_TEXTURES_AXI_HIGHADDR" "C_S_BLOCKS_AXI_BASEADDR" "C_S_BLOCKS_AXI_HIGHADDR"
}
