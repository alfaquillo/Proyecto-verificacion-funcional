`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: Multiplexor2a1de8bits
// Design Name: 
// Module Name: bufinout_tb
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


module Multiplexor2a1de8bits (
    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire       SEL,
    output reg  [7:0] OUT
);
    always @(A or B or SEL)
    begin
        if (~SEL)
            OUT = A;
        else
            OUT = B;
    end
endmodule