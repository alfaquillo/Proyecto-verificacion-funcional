// =============================================================================
// Módulo: Multiplexor4a1de16bits
// =============================================================================
// Descripción:
//   Multiplexor de 4 entradas de 16 bits con selección de 2 bits.
//   Según el valor de SEL, la salida OUT presenta una de las cuatro entradas.
//   Si SEL está fuera del rango 0 a 3, la salida es cero.
//
// Entradas:
//   - A, B, C, D : Entradas de datos de 16 bits.
//   - SEL        : Selector de 2 bits para elegir la entrada activa.
//
// Salidas:
//   - OUT        : Salida de 16 bits correspondiente a la entrada seleccionada.
//
// Parámetros:
//   Ninguno
// =============================================================================

module Multiplexor4a1de16bits (A, B, C, D, SEL, OUT);

    input [15:0] A, B, C, D;
    input [1:0] SEL;
    output reg [15:0] OUT;

    always @(A or B or C or D or SEL)
    begin
        case (SEL)
            2'd0: OUT = A;
            2'd1: OUT = B;
            2'd2: OUT = C;
            2'd3: OUT = D;
            default: OUT = 16'd0;
        endcase
    end

endmodule
