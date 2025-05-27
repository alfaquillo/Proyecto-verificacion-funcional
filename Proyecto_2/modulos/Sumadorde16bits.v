// =============================================================================
// Módulo: Sumador16bits
// =============================================================================
// Descripción:
//   Este módulo implementa un sumador combinacional de 16 bits. 
//
// Entradas:
//   - A   : Primer operando de 16 bits.
//   - B   : Segundo operando de 16 bits.
//
// Salidas:
//   - OUT : Resultado de la suma A + B (16 bits).
//
// Parámetros:
//   Ninguno
// =============================================================================

module Sumador16bits (
    input [15:0] A, B,
    output wire [15:0] OUT
);

    // Asignación combinacional de la suma
    assign OUT = A + B;  

endmodule
