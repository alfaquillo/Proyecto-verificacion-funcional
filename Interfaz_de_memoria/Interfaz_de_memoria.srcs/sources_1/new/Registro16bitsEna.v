`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 09:10:08
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

module Registro16bitsEna #(
    parameter RESET_VALUE = 16'h0000
)(
    input CLK, RST, ENA,
    input [15:0] D,
    output reg [15:0] Q
);
    always @(posedge CLK or posedge RST)
        if (RST)
            Q <= RESET_VALUE;  
        else if (ENA)
            Q <= D;
endmodule