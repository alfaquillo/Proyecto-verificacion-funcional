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

module RegistroIP (CLK, RST, ENA, SEL, D, Q);

    input CLK, RST, ENA, SEL;
    input [15:0] D;
    output reg [15:0] Q;

    reg [15:0] RIN;

    always @(Q or D or SEL)
        case (SEL)
            1'b0: RIN = Q + 1;
            1'b1: RIN = D;
        endcase

    always @(posedge CLK or posedge RST)
        if (RST)
            Q = 16'h0000;
        else if (ENA)
            Q = RIN;
        else
            Q = Q;

endmodule
