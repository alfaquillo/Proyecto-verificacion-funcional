`timescale 1ns / 1ps

// =============================================================================
// Module: 
// =============================================================================
// Descripción:
//   
//
// Entradas:
//   - CLK: señal de reloj
//   - RST: señal de reset
//   
//   
//
// Salidas:
//   
//
// Parámetros:
//   
//
// =============================================================================

module Registro8bits(CLK, RST, ENA,D,Q);
    input CLK, RST, ENA;
    input [7:0] D; 
    output reg [7:0] Q; 
    
always @(posedge CLK or posedge RST) 
    
    if (RST) 
        Q = 8'b0;
    else if (ENA)
        Q = D; 
    else 
        Q = Q; 
endmodule
