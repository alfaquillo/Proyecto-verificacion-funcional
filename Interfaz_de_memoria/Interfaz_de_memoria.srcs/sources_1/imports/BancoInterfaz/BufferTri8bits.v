`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:24:21
// Design Name: 
// Module Name: BufferTri8bits 
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
module BufferTri8bits (IN, ENA, OUT);

    input [7:0] IN;
    input ENA;
    output wire [7:0] OUT;

    assign OUT = (ENA) ? IN : 8'bzzzzzzzz;

endmodule