`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2020 19:12:54
// Design Name: 
// Module Name: vga_trunc
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


module vga_trunc(
    input wire [23:0] vid_data,
    input wire active,
    output wire [3:0] r,
    output wire [3:0] g,
    output wire [3:0] b
    );
    
assign r[3:0] = vid_data[23:20];
assign g[3:0] = vid_data[15:12];
assign b[3:0] = vid_data[7:4];
    
endmodule
