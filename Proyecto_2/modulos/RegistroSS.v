`timescale 1ns / 1ps
// =============================================================================
// Módulo: RegistroSS
// =============================================================================
// Descripción:
//   Este módulo implementa el registro del segmento SS (Stack Segment).
//   Internamente instancia un registro de 16 bits con habilitación y valor 
//   de reset parametrizable. En este caso, el valor de reset está fijado 
//   en 0x0000.
//
// Entradas:
//   - CLK : Señal de reloj.
//   - RST : Señal de reset síncrono.
//   - ENA : Señal de habilitación para escritura.
//   - D   : Dato de entrada de 16 bits.
//
// Salidas:
//   - Q   : Dato de salida de 16 bits.
//
// Parámetros:
//   Ninguno (el valor de reset se fija al instanciar Registro16bitsEna)
// =============================================================================

module RegistroSS (
    input CLK, RST, ENA,
    input [15:0] D,
    output [15:0] Q
);

    // Instancia del registro de 16 bits con valor de reset en 0x0000
    Registro16bitsEna #(.RESET_VALUE(16'h0000)) u_registro (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA),
        .D(D),
        .Q(Q)
    );

endmodule
