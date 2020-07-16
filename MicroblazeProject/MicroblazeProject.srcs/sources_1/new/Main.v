`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2020 14:52:15
// Design Name: 
// Module Name: Main
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


module Main(
    input wire clk,
    input wire btnC,
    output wire [3:0] vgaBlue,
    output wire [3:0] vgaGreen,
    output wire [3:0] vgaRed,
    output wire Vsync,
    output wire Hsync
    );
    
Main_System system
(
    .sys_clock(clk),
    .reset(btnC),
    .vgaBlue(vgaBlue),
    .vgaGreen(vgaGreen),
    .vgaRed(vgaRed),
    .vid_hsync(Hsync),
    .vid_vsync(Vsync)
);

endmodule
