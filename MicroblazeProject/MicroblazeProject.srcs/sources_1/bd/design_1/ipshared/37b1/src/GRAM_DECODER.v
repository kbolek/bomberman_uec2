`timescale 1ns / 1ps

module GRAM_DECODER(
    input wire [10:0] hcount,
    input wire [10:0] vcount,
    
    input wire [15:0] block_data,
    output wire [11:0] block_addr,
    
    output wire [5:0] char_number,
    output wire [2:0] char_color,
    output wire [2:0] texture_number,
    output wire inversion
    );
    
assign char_number = block_data[5:0];
assign char_color = block_data[10:8];
assign texture_number = block_data[14:12];
assign inversion = block_data[15];

assign block_addr = (((vcount/32)*32 + (hcount/32))*4);
    
endmodule
