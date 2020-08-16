
`timescale 1 ns / 1 ps

	module GPU_DC_v1_0 #
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
        input wire vga_clk,
        output wire [3:0] r,
        output wire [3:0] g,
        output wire [3:0] b,
        output wire hs,
        output wire vs,
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

wire [9:0] block_addr;
wire [15:0] block_data;
wire [12:0] texture_addr;
wire [11:0] pixel;

	GPU_DC_v1_0_AXI_LITE # ( 
		.C_S_AXI_DATA_WIDTH(C_AXI_LITE_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_AXI_LITE_ADDR_WIDTH)
	) GPU_DC_v1_0_AXI_LITE_inst (
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
		.block_addr(block_addr),
		.block(block_data),
		.texture_addr(texture_addr),
		.pixel(pixel),
		.vga_clk(vga_clk)
	);

	// Add user logic here
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