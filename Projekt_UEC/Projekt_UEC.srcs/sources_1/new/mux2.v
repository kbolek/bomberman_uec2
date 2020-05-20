`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 18:51:12
// Design Name: 
// Module Name: mux2
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


module mux2
#(parameter WIDTH = 8)

(
    input   wire [WIDTH-1:0]    d0,
    input   wire [WIDTH-1:0]    d1,
    input   wire                s,
    output  reg [WIDTH-1:0]     out
);

always @*
    case(s)
        1'b0:   out = d0;
        1'b1:   out = d1;
    endcase

endmodule
