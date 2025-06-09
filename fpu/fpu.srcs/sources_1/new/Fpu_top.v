`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 04:53:14 PM
// Design Name: 
// Module Name: Fpu_top
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


module Fpu_top(
    input clk,
    input reset,
    input [31:0] operand_a,
    input [31:0] operand_b,
    input operation, // 0: suma, 1: multiplicación
    output [31:0] result,
    output ready,
    output error // Para NaN/overflow/underflow
);
    // Descripción:
    // - Coordina todos los módulos
    // - Controla el pipeline de operaciones
    // - Maneja flags de estado
endmodule