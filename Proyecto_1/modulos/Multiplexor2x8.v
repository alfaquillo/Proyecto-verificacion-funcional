`timescale 1ns / 1ps

// =============================================================================
// Module: Multiplexor2x8
// =============================================================================
// Descripción:
//   Este módulo implementa un multiplexor 2 a 1 de 8 bits. 
//
// Entradas:
//   - A0  : entrada 8 bits (SEL = 0)
//   - A1  : entrada 8 bits (SEL = 1)
//   - SEL : selección del multiplexor
//
// Salidas:
//   - OUT : salida de 8 bits
//
// Parámetros:
//   - No se han definido parámetros configurables
//
// =============================================================================

module Multiplexor2x8(A0, A1, SEL, OUT);
    input [7:0] A0, A1;
    input SEL;
    output reg [7:0] OUT;
    
    always @(*)
        case (SEL)
            1'b0 : OUT = A0; 
            1'b1 : OUT = A1;
        endcase    

endmodule
