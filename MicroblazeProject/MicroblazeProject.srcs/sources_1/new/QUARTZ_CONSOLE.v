`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 21:40:37
// Design Name: 
// Module Name: QUARTZ_CONSOLE
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


module QUARTZ_CONSOLE(
    input wire clk,
    input wire reset,
    input wire [5:0] pad_a,
    input wire [5:0] pad_b,
    
    output wire [3:0] r,
    output wire [3:0] g,
    output wire [3:0] b,
    output wire hs,
    output wire vs,
    output wire pad_a_plug,
    output wire pad_b_plug,
    output wire sound_a,
    output wire sound_b
    );

design_1 console(
    .clk(clk),
    .reset(reset),
    .pad_a(pad_a),
    .pad_b(pad_b),
    
    .r(r),
    .g(g),
    .b(b),
    .hs(hs),
    .vs(vs),
    .pad_a_plug(pad_a_plug),
    .pad_b_plug(pad_b_plug),
    .sound_a(sound_a),
    .sound_b(sound_b)
);
    
endmodule
