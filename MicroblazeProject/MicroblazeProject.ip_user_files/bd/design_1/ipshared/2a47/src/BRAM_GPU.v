module BRAM_GPU(

        input wire vga_clk,
        output wire [3:0] r,
        output wire [3:0] g,
        output wire [3:0] b,
        output wire hs,
        output wire vs,
        output wire [31:0] bram_addr,
        input wire [31:0] bram_data
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

reg  [11:0] texture_data [8191:0];
initial $readmemh("textures.mem",texture_data);

assign pixel = texture_data[texture_addr];

assign block_data = bram_data[15:0];
assign bram_addr[11:0] = block_addr;
assign bram_addr[31:12] = 0;

endmodule