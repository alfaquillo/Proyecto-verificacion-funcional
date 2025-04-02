`timescale 1ns / 1ps

// =============================================================================
// Module: Multiplexor16x16
// =============================================================================
// Descripción:
//   Este módulo implementa un multiplexor de 16 a 1 con un ancho de datos de 16 bits.
//
// Entradas:
//   - A0  - A15 : 16 bits cada una
//   - SEL        :  selección de 4 bits que determina ls salida
//
// Salidas:
//   - OUT : salida de 16 bits
//
// Parámetros:
//   - No se han definido parámetros configurables
//
// =============================================================================


module multiplexor16x16 (
    A0, A1, A2, A3, A4, A5, A6, A7,
    A8, A9, A10, A11, A12, A13, A14, A15, SEL, OUT
);

    input  [15:0] A0, A1, A2, A3, A4, A5, A6, A7;
    input  [15:0] A8, A9, A10, A11, A12, A13, A14, A15;
    input  [3:0]  SEL;
    output reg [15:0] OUT;

    always @(*) 
    begin
        case (SEL)
            4'h0 : OUT = A0;
            4'h1 : OUT = A1;
            4'h2 : OUT = A2;
            4'h3 : OUT = A3;
            4'h4 : OUT = A4;
            4'h5 : OUT = A5;
            4'h6 : OUT = A6;
            4'h7 : OUT = A7;
            4'h8 : OUT = A8;
            4'h9 : OUT = A9;
            4'hA : OUT = A10;
            4'hB : OUT = A11;
            4'hC : OUT = A12;
            4'hD : OUT = A13;
            4'hE : OUT = A14;
            4'hF : OUT = A15;
        endcase
    end

endmodule