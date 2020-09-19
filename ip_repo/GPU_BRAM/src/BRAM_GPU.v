module BRAM_GPU(
        input wire vga_clk,
        input wire rst,
        output wire [3:0] r,
        output wire [3:0] g,
        output wire [3:0] b,
        output wire hs,
        output wire vs,
        output wire [31:0] bram_addr_blk,
        input wire [31:0] bram_rdata_blk,
        output wire bram_en_blk,
        output wire bram_clk_blk,
        output wire bram_rst_blk,
        output wire [3:0] bram_we_blk,
        
        output wire [31:0] bram_addr_txtr,
        input wire [31:0] bram_rdata_txtr,
        output wire bram_en_txtr,
        output wire bram_clk_txtr,
        output wire bram_rst_txtr,
        output wire [3:0] bram_we_txtr
);

wire [15:0] block_data;
wire [12:0] texture_addr;
wire [11:0] pixel;
wire [11:0] block_addr;

wire hsync_timing, vsync_timing;
wire [11:0] rgb_timing;
wire [10:0] vcount_timing, hcount_timing; 
wire vblank_timing, hblank_timing;   
    
TIMING_GEN timing_generator(
    .clk(vga_clk),
    .rst(rst),
    
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
    .rst(rst),
    .in(char_number),
    .out(char_number_clocked)
);

CLOCKER #(.WIDTH(3)) color_clocker
(
    .clk(vga_clk),
    .rst(rst),
    .in(char_color),
    .out(char_color_clocked)
);

wire hsync_frame, vsync_frame;
wire [10:0] vcount_frame, hcount_frame; 
wire vblank_frame, hblank_frame;
wire [11:0] rgb_frame;  

FRAME_GENERATOR FRAME_GEN(
    .clk(vga_clk),
    .rst(rst),
    
    .hsync(hsync_timing),
    .vsync(vsync_timing),
    .vblank(vblank_timing),
    .hblank(hblank_timing),
    .vcount(vcount_timing),
    .hcount(hcount_timing),
    
    .hsync_out(hsync_frame),
    .vsync_out(vsync_frame),
    .vblank_out(vblank_frame),
    .hblank_out(hblank_frame),
    .vcount_out(vcount_frame),
    .hcount_out(hcount_frame),
    .rgb_out(rgb_frame)
);

BLOCK_GEN block_generator(
    .clk(vga_clk),
    .rst(rst),
    
    .rgb_in(rgb_frame),
    .hsync(hsync_frame),
    .vsync(vsync_frame),
    .vblank(vblank_frame),
    .hblank(hblank_frame),
    .vcount(vcount_frame),
    .hcount(hcount_frame),
    
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
    .rst(rst),
    
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

assign block_data = bram_rdata_blk[15:0];
assign bram_addr_blk[11:0] = block_addr;
assign bram_addr_blk[31:12] = 0;
assign bram_en_blk = 1;
assign bram_clk_blk = vga_clk;
assign bram_rst_blk = rst;
assign bram_we_blk = 4'h0;

assign pixel = bram_rdata_txtr[11:0];
assign bram_addr_txtr[14:2] = texture_addr;
assign bram_addr_txtr[1:0] = 0;
assign bram_addr_txtr[31:15] = 0; 
assign bram_en_txtr = 1;
assign bram_clk_txtr = vga_clk;
assign bram_rst_txtr = rst;
assign bram_we_txtr = 4'h0;


endmodule