`timescale 1ns / 1ps

// =============================================================================
// Module: Registro16bits
// =============================================================================
// Descripción:
//   Este módulo implementa un registro de 16 bits con ENA
//
// Entradas:
//   - CLK: señal de reloj
//   - RST: señal de reset (activo en alto)
//   - ENA: señal de habilitación de escritura
//   - D  : dato de entrada de 16 bits
//
// Salidas:
//   - Q  : dato de salida de 16 bits
//
// Parámetros:
//   - No se han definido parámetros configurables
//
// =============================================================================

module Registro16bits(CLK, RST, ENA,D,Q);
    input CLK, RST, ENA;
    input [15:0] D; 
    output reg [15:0] Q; 
    
always@(posedge CLK or posedge RST) 
    
    if (RST) 
        Q = 16'b0;
    else if (ENA)
        Q = D; 
    else 
        Q = Q; 
endmodule
