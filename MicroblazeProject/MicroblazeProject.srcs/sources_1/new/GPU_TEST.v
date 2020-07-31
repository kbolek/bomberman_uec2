`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2020 19:27:02
// Design Name: 
// Module Name: GPU_TEST
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module GPU_TEST(
    input wire clk,
    input wire reset,
    input wire [8:0] sw,
    output wire [3:0] r,
    output wire [3:0] g,
    output wire [3:0] b,
    output wire hs,
    output wire vs
    );

clk_wiz_0 clk_wizard(
    .clk_in1(clk),
    .reset(reset),
    .clk_100M(),
    .clk_65M(disp_clk)
);
    
wire hsync_timing, vsync_timing;
wire [11:0] rgb_timing;
wire [10:0] vcount_timing, hcount_timing; 
wire vblank_timing, hblank_timing;   
    
TIMING_GEN timing_generator(
    .clk(disp_clk),
    
    .hsync_out(hsync_timing),
    .vsync_out(vsync_timing),
    .rgb_out(rgb_timing),
    .vblank_out(vblank_timing),
    .hblank_out(hblank_timing),
    .vcount_out(vcount_timing),
    .hcount_out(hcount_timing)
);

wire hsync_frame, vsync_frame;
wire [11:0] rgb_frame;
wire [10:0] vcount_frame, hcount_frame; 
wire vblank_frame, hblank_frame;   

FRAME_GEN frame_generator(
    .clk(disp_clk),
    
    .hsync(hsync_timing),
    .vsync(vsync_timing),
    .rgb(rgb_timing),
    .vblank(vblank_timing),
    .hblank(hblank_timing),
    .vcount(vcount_timing),
    .hcount(hcount_timing),
    
    .hsync_out(hsync_frame),
    .vsync_out(vsync_frame),
    .rgb_out(rgb_frame),
    .vblank_out(vblank_frame),
    .hblank_out(hblank_frame),
    .vcount_out(vcount_frame),
    .hcount_out(hcount_frame)
);

wire [4:0] char_line;
wire [31:0] line_data;

CHAR_ROM character_rom(
    .clk(disp_clk),
    .char_number(sw[5:0]),
    .char_line(char_line),
    .line_data(line_data)
);

TEXT_GEN text_generator(
    .clk(disp_clk),
    
    .hsync(hsync_frame),
    .vsync(vsync_frame),
    .rgb(rgb_frame),
    .vblank(vblank_frame),
    .hblank(hblank_frame),
    .vcount(vcount_frame),
    .hcount(hcount_frame),
    
    .hsync_out(hs),
    .vsync_out(vs),
    .rgb_out({r,g,b}),
    .vblank_out(),
    .hblank_out(),
    .vcount_out(),
    .hcount_out(),
    
    .color(sw[8:6]),
    .char_line(char_line),
    .line_data(line_data)
);
    
endmodule
