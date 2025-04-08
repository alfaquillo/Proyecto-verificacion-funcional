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


module multiplexor16x16(
    input  [15:0] A0, A1, A2, A3, A4, A5, A6, A7,
    input  [15:0] A8, A9, A10, A11, A12, A13, A14, A15,
    input  [3:0]  SEL,
    output reg [15:0] OUT
);
    always @(A0 or A1 or A2 or A3 or A4 or A5 or A6 or A7 or
             A8 or A9 or A10 or A11 or A12 or A13 or A14 or A15 or SEL) begin
        case (SEL)
            4'b0000: OUT = A0;
            4'b0001: OUT = A1;
            4'b0010: OUT = A2;
            4'b0011: OUT = A3;
            4'b0100: OUT = A4;
            4'b0101: OUT = A5;
            4'b0110: OUT = A6;
            4'b0111: OUT = A7;
            4'b1000: OUT = A8;
            4'b1001: OUT = A9;
            4'b1010: OUT = A10;
            4'b1011: OUT = A11;
            4'b1100: OUT = A12;
            4'b1101: OUT = A13;
            4'b1110: OUT = A14;
            4'b1111: OUT = A15;
        endcase
    end
endmodule