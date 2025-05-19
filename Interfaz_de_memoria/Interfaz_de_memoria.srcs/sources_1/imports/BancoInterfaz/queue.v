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

module queue (CLK, RST, ENA, DATAIN, DATAOUT);

    input CLK, RST, ENA;
    input [7:0] DATAIN;
    output wire [31:0] DATAOUT;

    // DATAIN -> R1 -> R2 -> R3 -> R4
    wire [7:0] DOUT1, DOUT2, DOUT3, DOUT4;

    Registro8bitsEna R1(CLK, RST, ENA, DATAIN, DOUT1);
    Registro8bitsEna R2(CLK, RST, ENA, DOUT1, DOUT2);
    Registro8bitsEna R3(CLK, RST, ENA, DOUT2, DOUT3);
    Registro8bitsEna R4(CLK, RST, ENA, DOUT3, DOUT4);

    assign DATAOUT = {DOUT4, DOUT3, DOUT2, DOUT1};

endmodule