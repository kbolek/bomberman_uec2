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
    
TIMING_GEN timing_generator(
    .clk(disp_clk),
    .hsync_out(hs),
    .vsync_out(vs),
    .rgb_out({r,g,b}),
    .vblank_out(),
    .hblank_out()
);
    
endmodule
