`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 21:11:10
// Design Name: 
// Module Name: SOUND_GENERATOR
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


module SOUND_GENERATOR(
    input wire [15:0] sound,
    output wire sound_a,
    output wire sound_b
    );
    
assign sound_a = 1'b0;
assign sound_b = 1'b0;
    
endmodule
