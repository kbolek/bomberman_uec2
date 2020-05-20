`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 17:26:10
// Design Name: 
// Module Name: texture_rom
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


module texture_rom
#(parameter
    DATA_WIDTH = 12,
    ADDR_WIDTH = 8
)

(
    input   wire [3:0]  x,
    input   wire [3:0]  y,
//    input   wire [2:0]  t_number,
    output  wire [11:0] rgb
);

wire [7:0] addr;   
reg [DATA_WIDTH-1:0] t0[0:2**ADDR_WIDTH-1];

initial $readmemh("D:/vivado/Projekt_UEC/t0.dat",t0);    

//t_number i mux8

assign addr = y*15 + x;
assign rgb = t0[addr];

endmodule
