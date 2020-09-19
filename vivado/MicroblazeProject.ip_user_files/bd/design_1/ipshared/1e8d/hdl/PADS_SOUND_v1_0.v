
`timescale 1 ns / 1 ps

	module PADS_SOUND_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface AXI_LITE
		parameter integer C_AXI_LITE_DATA_WIDTH	= 32,
		parameter integer C_AXI_LITE_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		output wire sound_a,
		output wire sound_b,
		output wire pad_a_plug,
		output wire pad_b_plug,
        input wire [5:0] pad_a,
        input wire [5:0] pad_b,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface AXI_LITE
		input wire  axi_lite_aclk,
		input wire  axi_lite_aresetn,
		input wire [C_AXI_LITE_ADDR_WIDTH-1 : 0] axi_lite_awaddr,
		input wire [2 : 0] axi_lite_awprot,
		input wire  axi_lite_awvalid,
		output wire  axi_lite_awready,
		input wire [C_AXI_LITE_DATA_WIDTH-1 : 0] axi_lite_wdata,
		input wire [(C_AXI_LITE_DATA_WIDTH/8)-1 : 0] axi_lite_wstrb,
		input wire  axi_lite_wvalid,
		output wire  axi_lite_wready,
		output wire [1 : 0] axi_lite_bresp,
		output wire  axi_lite_bvalid,
		input wire  axi_lite_bready,
		input wire [C_AXI_LITE_ADDR_WIDTH-1 : 0] axi_lite_araddr,
		input wire [2 : 0] axi_lite_arprot,
		input wire  axi_lite_arvalid,
		output wire  axi_lite_arready,
		output wire [C_AXI_LITE_DATA_WIDTH-1 : 0] axi_lite_rdata,
		output wire [1 : 0] axi_lite_rresp,
		output wire  axi_lite_rvalid,
		input wire  axi_lite_rready
	);
// Instantiation of Axi Bus Interface AXI_LITE
    wire [15:0] sound;

	PADS_SOUND_v1_0_AXI_LITE # ( 
		.C_S_AXI_DATA_WIDTH(C_AXI_LITE_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_AXI_LITE_ADDR_WIDTH)
	) PADS_SOUND_v1_0_AXI_LITE_inst (
		.S_AXI_ACLK(axi_lite_aclk),
		.S_AXI_ARESETN(axi_lite_aresetn),
		.S_AXI_AWADDR(axi_lite_awaddr),
		.S_AXI_AWPROT(axi_lite_awprot),
		.S_AXI_AWVALID(axi_lite_awvalid),
		.S_AXI_AWREADY(axi_lite_awready),
		.S_AXI_WDATA(axi_lite_wdata),
		.S_AXI_WSTRB(axi_lite_wstrb),
		.S_AXI_WVALID(axi_lite_wvalid),
		.S_AXI_WREADY(axi_lite_wready),
		.S_AXI_BRESP(axi_lite_bresp),
		.S_AXI_BVALID(axi_lite_bvalid),
		.S_AXI_BREADY(axi_lite_bready),
		.S_AXI_ARADDR(axi_lite_araddr),
		.S_AXI_ARPROT(axi_lite_arprot),
		.S_AXI_ARVALID(axi_lite_arvalid),
		.S_AXI_ARREADY(axi_lite_arready),
		.S_AXI_RDATA(axi_lite_rdata),
		.S_AXI_RRESP(axi_lite_rresp),
		.S_AXI_RVALID(axi_lite_rvalid),
		.S_AXI_RREADY(axi_lite_rready),
        .pad_a(pad_a),
        .pad_b(pad_b),
        .sound(sound)
	);

	// Add user logic here
	
	SOUND_GENERATOR SOUND_GEN(
	   .sound(sound),
	   .sound_a(sound_a),
	   .sound_b(sound_b)
	);
	
    assign pad_a_plug = 1'b1;
	assign pad_b_plug = 1'b1;
	// User logic ends

	endmodule
