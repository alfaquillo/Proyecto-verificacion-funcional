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


module RegistroCS (
    input CLK, RST, ENA,
    input [15:0] D,
    output [15:0] Q
);
    // Valor inicial tipico en x86: 0xF000
    Registro16bitsEna #(.RESET_VALUE(16'hF000)) u_registro (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA),
        .D(D),
        .Q(Q)
    );
endmodule