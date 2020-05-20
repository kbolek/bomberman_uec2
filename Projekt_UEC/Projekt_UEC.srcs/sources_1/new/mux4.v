`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 18:51:12
// Design Name: 
// Module Name: mux4
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


module mux4
#(parameter WIDTH = 8)

(
    input   wire [WIDTH-1:0]    d0,
    input   wire [WIDTH-1:0]    d1,
    input   wire [WIDTH-1:0]    d2,
    input   wire [WIDTH-1:0]    d3,
    input   wire [1:0]          s,
    output  reg [WIDTH-1:0]     out
);

always @*
    case(s)
        2'b00:   out = d0;
        2'b01:   out = d1;
        2'b10:   out = d2;
        2'b11:   out = d3;
    endcase

endmodule
