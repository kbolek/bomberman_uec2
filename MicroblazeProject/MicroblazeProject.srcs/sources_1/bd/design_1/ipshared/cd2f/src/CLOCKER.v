`timescale 1ns / 1ps

module CLOCKER

#(parameter WIDTH = 32)

(
    input wire clk,
    input wire rst,
    input wire [WIDTH-1:0] in,
    output reg [WIDTH-1:0] out
);

always @(posedge clk)
begin
    if(rst)
        out <= 0;
    else
        out <= in;
end

endmodule
