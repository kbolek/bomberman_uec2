`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2020 19:27:02
// Design Name: 
// Module Name: CHAR_ROM
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


module CHAR_ROM
#(parameter
    DATA_WIDTH = 32,
    ADDR_WIDTH = 11
)

(
    input wire [5:0] char_number,
    input wire [4:0] char_line,
    output wire [31:0] line_data
);

wire [ADDR_WIDTH:0] addr;

reg [DATA_WIDTH-1:0] font[0:2**ADDR_WIDTH-1];

initial $readmemh("fonts.mem",font);    

assign addr = char_number*32 + char_line;
assign line_data = font[addr];
    
endmodule
