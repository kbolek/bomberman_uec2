
`timescale 1 ns / 1 ps

	module GPU_FULL_v2_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_BLOCK_AXI
		parameter integer C_S_BLOCK_AXI_ID_WIDTH	= 1,
		parameter integer C_S_BLOCK_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_BLOCK_AXI_ADDR_WIDTH	= 11,
		parameter integer C_S_BLOCK_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S_BLOCK_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S_BLOCK_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S_BLOCK_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S_BLOCK_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Slave Bus Interface S_TEXTURE_AXI
		parameter integer C_S_TEXTURE_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_TEXTURE_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
        input wire vga_clk,
        output wire [3:0] r,
        output wire [3:0] g,
        output wire [3:0] b,
        output wire hs,
        output wire vs,
		// User ports ends
		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface S_BLOCK_AXI
		input wire  s_block_axi_aclk,
		input wire  s_block_axi_aresetn,
		input wire [C_S_BLOCK_AXI_ID_WIDTH-1 : 0] s_block_axi_awid,
		input wire [C_S_BLOCK_AXI_ADDR_WIDTH-1 : 0] s_block_axi_awaddr,
		input wire [7 : 0] s_block_axi_awlen,
		input wire [2 : 0] s_block_axi_awsize,
		input wire [1 : 0] s_block_axi_awburst,
		input wire  s_block_axi_awlock,
		input wire [3 : 0] s_block_axi_awcache,
		input wire [2 : 0] s_block_axi_awprot,
		input wire [3 : 0] s_block_axi_awqos,
		input wire [3 : 0] s_block_axi_awregion,
		input wire [C_S_BLOCK_AXI_AWUSER_WIDTH-1 : 0] s_block_axi_awuser,
		input wire  s_block_axi_awvalid,
		output wire  s_block_axi_awready,
		input wire [C_S_BLOCK_AXI_DATA_WIDTH-1 : 0] s_block_axi_wdata,
		input wire [(C_S_BLOCK_AXI_DATA_WIDTH/8)-1 : 0] s_block_axi_wstrb,
		input wire  s_block_axi_wlast,
		input wire [C_S_BLOCK_AXI_WUSER_WIDTH-1 : 0] s_block_axi_wuser,
		input wire  s_block_axi_wvalid,
		output wire  s_block_axi_wready,
		output wire [C_S_BLOCK_AXI_ID_WIDTH-1 : 0] s_block_axi_bid,
		output wire [1 : 0] s_block_axi_bresp,
		output wire [C_S_BLOCK_AXI_BUSER_WIDTH-1 : 0] s_block_axi_buser,
		output wire  s_block_axi_bvalid,
		input wire  s_block_axi_bready,
		input wire [C_S_BLOCK_AXI_ID_WIDTH-1 : 0] s_block_axi_arid,
		input wire [C_S_BLOCK_AXI_ADDR_WIDTH-1 : 0] s_block_axi_araddr,
		input wire [7 : 0] s_block_axi_arlen,
		input wire [2 : 0] s_block_axi_arsize,
		input wire [1 : 0] s_block_axi_arburst,
		input wire  s_block_axi_arlock,
		input wire [3 : 0] s_block_axi_arcache,
		input wire [2 : 0] s_block_axi_arprot,
		input wire [3 : 0] s_block_axi_arqos,
		input wire [3 : 0] s_block_axi_arregion,
		input wire [C_S_BLOCK_AXI_ARUSER_WIDTH-1 : 0] s_block_axi_aruser,
		input wire  s_block_axi_arvalid,
		output wire  s_block_axi_arready,
		output wire [C_S_BLOCK_AXI_ID_WIDTH-1 : 0] s_block_axi_rid,
		output wire [C_S_BLOCK_AXI_DATA_WIDTH-1 : 0] s_block_axi_rdata,
		output wire [1 : 0] s_block_axi_rresp,
		output wire  s_block_axi_rlast,
		output wire [C_S_BLOCK_AXI_RUSER_WIDTH-1 : 0] s_block_axi_ruser,
		output wire  s_block_axi_rvalid,
		input wire  s_block_axi_rready,

		// Ports of Axi Slave Bus Interface S_TEXTURE_AXI
		input wire  s_texture_axi_aclk,
		input wire  s_texture_axi_aresetn,
		input wire [C_S_TEXTURE_AXI_ADDR_WIDTH-1 : 0] s_texture_axi_awaddr,
		input wire [2 : 0] s_texture_axi_awprot,
		input wire  s_texture_axi_awvalid,
		output wire  s_texture_axi_awready,
		input wire [C_S_TEXTURE_AXI_DATA_WIDTH-1 : 0] s_texture_axi_wdata,
		input wire [(C_S_TEXTURE_AXI_DATA_WIDTH/8)-1 : 0] s_texture_axi_wstrb,
		input wire  s_texture_axi_wvalid,
		output wire  s_texture_axi_wready,
		output wire [1 : 0] s_texture_axi_bresp,
		output wire  s_texture_axi_bvalid,
		input wire  s_texture_axi_bready,
		input wire [C_S_TEXTURE_AXI_ADDR_WIDTH-1 : 0] s_texture_axi_araddr,
		input wire [2 : 0] s_texture_axi_arprot,
		input wire  s_texture_axi_arvalid,
		output wire  s_texture_axi_arready,
		output wire [C_S_TEXTURE_AXI_DATA_WIDTH-1 : 0] s_texture_axi_rdata,
		output wire [1 : 0] s_texture_axi_rresp,
		output wire  s_texture_axi_rvalid,
		input wire  s_texture_axi_rready
	);
// Instantiation of Axi Bus Interface S_BLOCK_AXI
    wire [9:0] block_addr;
    wire [15:0] block_data;
    wire [12:0] texture_addr;
    wire [11:0] pixel;
    
	GPU_FULL_v2_0_S_BLOCK_AXI # ( 
		.C_S_AXI_ID_WIDTH(C_S_BLOCK_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S_BLOCK_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_BLOCK_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S_BLOCK_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S_BLOCK_AXI_ARUSER_WIDTH),
		.C_S_AXI_WUSER_WIDTH(C_S_BLOCK_AXI_WUSER_WIDTH),
		.C_S_AXI_RUSER_WIDTH(C_S_BLOCK_AXI_RUSER_WIDTH),
		.C_S_AXI_BUSER_WIDTH(C_S_BLOCK_AXI_BUSER_WIDTH)
	) GPU_FULL_v2_0_S_BLOCK_AXI_inst (
		.S_AXI_ACLK(s_block_axi_aclk),
		.S_AXI_ARESETN(s_block_axi_aresetn),
		.S_AXI_AWID(s_block_axi_awid),
		.S_AXI_AWADDR(s_block_axi_awaddr),
		.S_AXI_AWLEN(s_block_axi_awlen),
		.S_AXI_AWSIZE(s_block_axi_awsize),
		.S_AXI_AWBURST(s_block_axi_awburst),
		.S_AXI_AWLOCK(s_block_axi_awlock),
		.S_AXI_AWCACHE(s_block_axi_awcache),
		.S_AXI_AWPROT(s_block_axi_awprot),
		.S_AXI_AWQOS(s_block_axi_awqos),
		.S_AXI_AWREGION(s_block_axi_awregion),
		.S_AXI_AWUSER(s_block_axi_awuser),
		.S_AXI_AWVALID(s_block_axi_awvalid),
		.S_AXI_AWREADY(s_block_axi_awready),
		.S_AXI_WDATA(s_block_axi_wdata),
		.S_AXI_WSTRB(s_block_axi_wstrb),
		.S_AXI_WLAST(s_block_axi_wlast),
		.S_AXI_WUSER(s_block_axi_wuser),
		.S_AXI_WVALID(s_block_axi_wvalid),
		.S_AXI_WREADY(s_block_axi_wready),
		.S_AXI_BID(s_block_axi_bid),
		.S_AXI_BRESP(s_block_axi_bresp),
		.S_AXI_BUSER(s_block_axi_buser),
		.S_AXI_BVALID(s_block_axi_bvalid),
		.S_AXI_BREADY(s_block_axi_bready),
		.S_AXI_ARID(s_block_axi_arid),
		.S_AXI_ARADDR(s_block_axi_araddr),
		.S_AXI_ARLEN(s_block_axi_arlen),
		.S_AXI_ARSIZE(s_block_axi_arsize),
		.S_AXI_ARBURST(s_block_axi_arburst),
		.S_AXI_ARLOCK(s_block_axi_arlock),
		.S_AXI_ARCACHE(s_block_axi_arcache),
		.S_AXI_ARPROT(s_block_axi_arprot),
		.S_AXI_ARQOS(s_block_axi_arqos),
		.S_AXI_ARREGION(s_block_axi_arregion),
		.S_AXI_ARUSER(s_block_axi_aruser),
		.S_AXI_ARVALID(s_block_axi_arvalid),
		.S_AXI_ARREADY(s_block_axi_arready),
		.S_AXI_RID(s_block_axi_rid),
		.S_AXI_RDATA(s_block_axi_rdata),
		.S_AXI_RRESP(s_block_axi_rresp),
		.S_AXI_RLAST(s_block_axi_rlast),
		.S_AXI_RUSER(s_block_axi_ruser),
		.S_AXI_RVALID(s_block_axi_rvalid),
		.S_AXI_RREADY(s_block_axi_rready),
		.block_addr(block_addr),
		.block(block_data),
		.texture_addr(texture_addr),
		.pixel(pixel),
		.vga_clk(vga_clk)
	);

// Instantiation of Axi Bus Interface S_TEXTURE_AXI
	GPU_FULL_v2_0_S_TEXTURE_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S_TEXTURE_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_TEXTURE_AXI_ADDR_WIDTH)
	) GPU_FULL_v2_0_S_TEXTURE_AXI_inst (
		.S_AXI_ACLK(s_texture_axi_aclk),
		.S_AXI_ARESETN(s_texture_axi_aresetn),
		.S_AXI_AWADDR(s_texture_axi_awaddr),
		.S_AXI_AWPROT(s_texture_axi_awprot),
		.S_AXI_AWVALID(s_texture_axi_awvalid),
		.S_AXI_AWREADY(s_texture_axi_awready),
		.S_AXI_WDATA(s_texture_axi_wdata),
		.S_AXI_WSTRB(s_texture_axi_wstrb),
		.S_AXI_WVALID(s_texture_axi_wvalid),
		.S_AXI_WREADY(s_texture_axi_wready),
		.S_AXI_BRESP(s_texture_axi_bresp),
		.S_AXI_BVALID(s_texture_axi_bvalid),
		.S_AXI_BREADY(s_texture_axi_bready),
		.S_AXI_ARADDR(s_texture_axi_araddr),
		.S_AXI_ARPROT(s_texture_axi_arprot),
		.S_AXI_ARVALID(s_texture_axi_arvalid),
		.S_AXI_ARREADY(s_texture_axi_arready),
		.S_AXI_RDATA(s_texture_axi_rdata),
		.S_AXI_RRESP(s_texture_axi_rresp),
		.S_AXI_RVALID(s_texture_axi_rvalid),
		.S_AXI_RREADY(s_texture_axi_rready)
	);

	// Add user logic her
wire hsync_timing, vsync_timing;
wire [11:0] rgb_timing;
wire [10:0] vcount_timing, hcount_timing; 
wire vblank_timing, hblank_timing;   
    
TIMING_GEN timing_generator(
    .clk(vga_clk),
    
    .hsync_out(hsync_timing),
    .vsync_out(vsync_timing),
    .rgb_out(rgb_timing),
    .vblank_out(vblank_timing),
    .hblank_out(hblank_timing),
    .vcount_out(vcount_timing),
    .hcount_out(hcount_timing)
);

wire hsync_block, vsync_block;
wire [11:0] rgb_block;
wire [10:0] vcount_block, hcount_block; 
wire vblank_block, hblank_block;  

wire [5:0] char_number;
wire [2:0] char_color;
wire [2:0] texture_number;
wire inversion;

GRAM_DECODER block_decoder(
    .hcount(hcount_timing),
    .vcount(vcount_timing),
    .block_data(block_data),
    .block_addr(block_addr),
    .char_number(char_number),
    .char_color(char_color),
    .texture_number(texture_number),
    .inversion(inversion)
);

wire [5:0] char_number_clocked;
wire [2:0] char_color_clocked;

CLOCKER #(.WIDTH(6)) number_clocker
(
    .clk(vga_clk),
    .in(char_number),
    .out(char_number_clocked)
);

CLOCKER #(.WIDTH(3)) color_clocker
(
    .clk(vga_clk),
    .in(char_color),
    .out(char_color_clocked)
);

BLOCK_GEN block_generator(
    .clk(vga_clk),
    
    .hsync(hsync_timing),
    .vsync(vsync_timing),
    .vblank(vblank_timing),
    .hblank(hblank_timing),
    .vcount(vcount_timing),
    .hcount(hcount_timing),
    
    .hsync_out(hsync_block),
    .vsync_out(vsync_block),
    .rgb_out(rgb_block),
    .vblank_out(vblank_block),
    .hblank_out(hblank_block),
    .vcount_out(vcount_block),
    .hcount_out(hcount_block),
    
    .texture_number(texture_number),
    .inversion(inversion),
    .texture_addr(texture_addr),
    .texture_rgb(pixel)
);

wire [4:0] char_line;
wire [31:0] line_data;

CHAR_ROM character_rom(
    .char_number(char_number_clocked),
    .char_line(char_line),
    .line_data(line_data)
);

TEXT_GEN text_generator(
    .clk(vga_clk),
    
    .hsync(hsync_block),
    .vsync(vsync_block),
    .rgb(rgb_block),
    .vblank(vblank_block),
    .hblank(hblank_block),
    .vcount(vcount_block),
    .hcount(hcount_block),
    
    .hsync_out(hs),
    .vsync_out(vs),
    .rgb_out({r,g,b}),
    .vblank_out(),
    .hblank_out(),
    .vcount_out(),
    .hcount_out(),
    
    .color(char_color_clocked),
    .char_line(char_line),
    .line_data(line_data)
);
	// User logic ends

	endmodule
