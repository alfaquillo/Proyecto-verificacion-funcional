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


module Multiplexor2a1de8bits (A, B, SEL, OUT);

    input [7:0] A, B;
    input SEL;
    output reg [7:0] OUT;

    always @(A or B or SEL)
    begin
        if (~SEL)
            OUT = A;
        else
            OUT = B;
    end

endmodule