`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 18:51:12
// Design Name: 
// Module Name: mux8
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


module mux8
#(parameter WIDTH = 8)

(
    input   wire [WIDTH-1:0]    d0,
    input   wire [WIDTH-1:0]    d1,
    input   wire [WIDTH-1:0]    d2,
    input   wire [WIDTH-1:0]    d3,
    input   wire [WIDTH-1:0]    d4,
    input   wire [WIDTH-1:0]    d5,
    input   wire [WIDTH-1:0]    d6,
    input   wire [WIDTH-1:0]    d7,
    input   wire [2:0]          s,
    output  reg [WIDTH-1:0]     out
);

always @*
    case(s)
        3'b000:   out = d0;
        3'b001:   out = d1;
        3'b010:   out = d2;
        3'b011:   out = d3;
        3'b100:   out = d4;
        3'b101:   out = d5;
        3'b110:   out = d6;
        3'b111:   out = d7;
    endcase

endmodule
