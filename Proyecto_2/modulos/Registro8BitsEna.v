`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:24:21
// Design Name: 
// Module Name: 
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

module Registro8bitsEna (
    input wire CLK,
    input wire RST,
    input wire ENA,
    input wire [7:0] D,
    output reg [7:0] Q
);
    always @(posedge CLK or posedge RST) begin
        if (RST)
            Q <= 8'h80;
        else if (ENA)
            Q <= D;
    end
endmodule
