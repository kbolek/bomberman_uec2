
`timescale 1 ns / 1 ps

	module GPU_LITE_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_TEXTURES_AXI
		parameter integer C_S_TEXTURES_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_TEXTURES_AXI_ADDR_WIDTH	= 12,

		// Parameters of Axi Slave Bus Interface S_BLOCKS_AXI
		parameter integer C_S_BLOCKS_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_BLOCKS_AXI_ADDR_WIDTH	= 10,

		// Parameters of Axi Master Bus Interface M_VGA_AXIS
		parameter integer C_M_VGA_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M_VGA_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
        
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_TEXTURES_AXI
		input wire  s_textures_axi_aclk,
		input wire  s_textures_axi_aresetn,
		input wire [C_S_TEXTURES_AXI_ADDR_WIDTH-1 : 0] s_textures_axi_awaddr,
		input wire [2 : 0] s_textures_axi_awprot,
		input wire  s_textures_axi_awvalid,
		output wire  s_textures_axi_awready,
		input wire [C_S_TEXTURES_AXI_DATA_WIDTH-1 : 0] s_textures_axi_wdata,
		input wire [(C_S_TEXTURES_AXI_DATA_WIDTH/8)-1 : 0] s_textures_axi_wstrb,
		input wire  s_textures_axi_wvalid,
		output wire  s_textures_axi_wready,
		output wire [1 : 0] s_textures_axi_bresp,
		output wire  s_textures_axi_bvalid,
		input wire  s_textures_axi_bready,
		input wire [C_S_TEXTURES_AXI_ADDR_WIDTH-1 : 0] s_textures_axi_araddr,
		input wire [2 : 0] s_textures_axi_arprot,
		input wire  s_textures_axi_arvalid,
		output wire  s_textures_axi_arready,
		output wire [C_S_TEXTURES_AXI_DATA_WIDTH-1 : 0] s_textures_axi_rdata,
		output wire [1 : 0] s_textures_axi_rresp,
		output wire  s_textures_axi_rvalid,
		input wire  s_textures_axi_rready,

		// Ports of Axi Slave Bus Interface S_BLOCKS_AXI
		input wire  s_blocks_axi_aclk,
		input wire  s_blocks_axi_aresetn,
		input wire [C_S_BLOCKS_AXI_ADDR_WIDTH-1 : 0] s_blocks_axi_awaddr,
		input wire [2 : 0] s_blocks_axi_awprot,
		input wire  s_blocks_axi_awvalid,
		output wire  s_blocks_axi_awready,
		input wire [C_S_BLOCKS_AXI_DATA_WIDTH-1 : 0] s_blocks_axi_wdata,
		input wire [(C_S_BLOCKS_AXI_DATA_WIDTH/8)-1 : 0] s_blocks_axi_wstrb,
		input wire  s_blocks_axi_wvalid,
		output wire  s_blocks_axi_wready,
		output wire [1 : 0] s_blocks_axi_bresp,
		output wire  s_blocks_axi_bvalid,
		input wire  s_blocks_axi_bready,
		input wire [C_S_BLOCKS_AXI_ADDR_WIDTH-1 : 0] s_blocks_axi_araddr,
		input wire [2 : 0] s_blocks_axi_arprot,
		input wire  s_blocks_axi_arvalid,
		output wire  s_blocks_axi_arready,
		output wire [C_S_BLOCKS_AXI_DATA_WIDTH-1 : 0] s_blocks_axi_rdata,
		output wire [1 : 0] s_blocks_axi_rresp,
		output wire  s_blocks_axi_rvalid,
		input wire  s_blocks_axi_rready,

		// Ports of Axi Master Bus Interface M_VGA_AXIS
		input wire  m_vga_axis_aclk,
		input wire  m_vga_axis_aresetn,
		output wire  m_vga_axis_tvalid,
		output wire [C_M_VGA_AXIS_TDATA_WIDTH-1 : 0] m_vga_axis_tdata,
		output wire [(C_M_VGA_AXIS_TDATA_WIDTH/8)-1 : 0] m_vga_axis_tstrb,
		output wire  m_vga_axis_tlast,
		input wire  m_vga_axis_tready
	);
// Instantiation of Axi Bus Interface S_TEXTURES_AXI
	GPU_LITE_v1_0_S_TEXTURES_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S_TEXTURES_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_TEXTURES_AXI_ADDR_WIDTH)
	) GPU_LITE_v1_0_S_TEXTURES_AXI_inst (
		.S_AXI_ACLK(s_textures_axi_aclk),
		.S_AXI_ARESETN(s_textures_axi_aresetn),
		.S_AXI_AWADDR(s_textures_axi_awaddr),
		.S_AXI_AWPROT(s_textures_axi_awprot),
		.S_AXI_AWVALID(s_textures_axi_awvalid),
		.S_AXI_AWREADY(s_textures_axi_awready),
		.S_AXI_WDATA(s_textures_axi_wdata),
		.S_AXI_WSTRB(s_textures_axi_wstrb),
		.S_AXI_WVALID(s_textures_axi_wvalid),
		.S_AXI_WREADY(s_textures_axi_wready),
		.S_AXI_BRESP(s_textures_axi_bresp),
		.S_AXI_BVALID(s_textures_axi_bvalid),
		.S_AXI_BREADY(s_textures_axi_bready),
		.S_AXI_ARADDR(s_textures_axi_araddr),
		.S_AXI_ARPROT(s_textures_axi_arprot),
		.S_AXI_ARVALID(s_textures_axi_arvalid),
		.S_AXI_ARREADY(s_textures_axi_arready),
		.S_AXI_RDATA(s_textures_axi_rdata),
		.S_AXI_RRESP(s_textures_axi_rresp),
		.S_AXI_RVALID(s_textures_axi_rvalid),
		.S_AXI_RREADY(s_textures_axi_rready)
	);

// Instantiation of Axi Bus Interface S_BLOCKS_AXI
	GPU_LITE_v1_0_S_BLOCKS_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S_BLOCKS_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_BLOCKS_AXI_ADDR_WIDTH)
	) GPU_LITE_v1_0_S_BLOCKS_AXI_inst (
		.S_AXI_ACLK(s_blocks_axi_aclk),
		.S_AXI_ARESETN(s_blocks_axi_aresetn),
		.S_AXI_AWADDR(s_blocks_axi_awaddr),
		.S_AXI_AWPROT(s_blocks_axi_awprot),
		.S_AXI_AWVALID(s_blocks_axi_awvalid),
		.S_AXI_AWREADY(s_blocks_axi_awready),
		.S_AXI_WDATA(s_blocks_axi_wdata),
		.S_AXI_WSTRB(s_blocks_axi_wstrb),
		.S_AXI_WVALID(s_blocks_axi_wvalid),
		.S_AXI_WREADY(s_blocks_axi_wready),
		.S_AXI_BRESP(s_blocks_axi_bresp),
		.S_AXI_BVALID(s_blocks_axi_bvalid),
		.S_AXI_BREADY(s_blocks_axi_bready),
		.S_AXI_ARADDR(s_blocks_axi_araddr),
		.S_AXI_ARPROT(s_blocks_axi_arprot),
		.S_AXI_ARVALID(s_blocks_axi_arvalid),
		.S_AXI_ARREADY(s_blocks_axi_arready),
		.S_AXI_RDATA(s_blocks_axi_rdata),
		.S_AXI_RRESP(s_blocks_axi_rresp),
		.S_AXI_RVALID(s_blocks_axi_rvalid),
		.S_AXI_RREADY(s_blocks_axi_rready)
	);

// Instantiation of Axi Bus Interface M_VGA_AXIS
	GPU_LITE_v1_0_M_VGA_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_VGA_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_VGA_AXIS_START_COUNT)
	) GPU_LITE_v1_0_M_VGA_AXIS_inst (
		.M_AXIS_ACLK(m_vga_axis_aclk),
		.M_AXIS_ARESETN(m_vga_axis_aresetn),
		.M_AXIS_TVALID(m_vga_axis_tvalid),
		.M_AXIS_TDATA(m_vga_axis_tdata),
		.M_AXIS_TSTRB(m_vga_axis_tstrb),
		.M_AXIS_TLAST(m_vga_axis_tlast),
		.M_AXIS_TREADY(m_vga_axis_tready)
	);

	// Add user logic here

	// User logic ends

	endmodule
