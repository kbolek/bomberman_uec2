`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2020 16:50:02
// Design Name: 
// Module Name: Timer
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


module Timer(
    input wire clk,
    input wire n_rst,
    output reg [31:0] value
    );

reg [16:0] cycles;
reg [16:0] cycles_nxt;
reg [31:0] value_nxt;

always @(posedge clk)
begin
    cycles <= cycles_nxt;
    value <= value_nxt;
end

always @*
begin
    if (n_rst)
    begin
        if (cycles == 17'd100000)
        begin
            cycles_nxt = 0;
            value_nxt = value + 1;
        end
        else
        begin
            cycles_nxt = cycles + 1;
            value_nxt = value;
        end
    end
    else
    begin
        cycles_nxt = 17'h0;
        value_nxt = 32'h0;
    end
end
    
endmodule
