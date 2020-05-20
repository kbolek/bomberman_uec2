`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 19:32:07
// Design Name: 
// Module Name: font_rom
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


module font_rom
#(parameter
    DATA_WIDTH = 16,
    ADDR_WIDTH = 10
)

(
    input   wire [5:0]  char_addr,
    input   wire [3:0]  line_addr,
    output  wire [DATA_WIDTH-1:0]  line
);

wire [11:0] addr;

reg [DATA_WIDTH-1:0] font[0:2**ADDR_WIDTH-1];

initial $readmemh("D:/vivado/Projekt_UEC/font.dat",font);    

assign addr = char_addr*15 + line_addr;
assign line = font[addr];

endmodule
