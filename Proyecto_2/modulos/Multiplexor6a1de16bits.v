// =============================================================================
// Módulo: Multiplexor6a1de16bits
// =============================================================================
// Descripción:
//   Multiplexor de 6 entradas de 16 bits con selección de 3 bits.
//   Según el valor de SEL, la salida OUT presenta una de las seis entradas.
//   Si SEL está fuera del rango 0 a 5, la salida es cero.
//
// Entradas:
//   - A, B, C, D, E, F : Entradas de datos de 16 bits.
//   - SEL              : Selector de 3 bits para elegir la entrada activa.
//
// Salidas:
//   - OUT              : Salida de 16 bits correspondiente a la entrada seleccionada.
//
// Parámetros:
//   Ninguno
// =============================================================================

module Multiplexor6a1de16bits (A, B, C, D, E, F, SEL, OUT);

    input [15:0] A, B, C, D, E, F;
    input [2:0] SEL;
    output wire [15:0] OUT;

    assign OUT = (SEL == 3'd0) ? A :
                (SEL == 3'd1) ? B :
                (SEL == 3'd2) ? C :
                (SEL == 3'd3) ? D :
                (SEL == 3'd4) ? E :
                (SEL == 3'd5) ? F :
                16'd0;

endmodule
