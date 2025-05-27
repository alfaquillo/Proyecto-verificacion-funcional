`timescale 1ns / 1ps

// =============================================================================
// Módulo: RegistroCS
// =============================================================================
// Descripción:
//   Este módulo implementa el registro del segmento CS (Code Segment).
//   Internamente instancia un registro de 16 bits con habilitación (ENA) 
//   y un valor de reset fijado en 0xF000, valor típico utilizado como 
//   segmento inicial en arquitecturas x86.
//
// Entradas:
//   - CLK : Señal de reloj.
//   - RST : Señal de reset síncrono.
//   - ENA : Señal de habilitación para actualizar el valor del registro.
//   - D   : Dato de entrada de 16 bits.
//
// Salidas:
//   - Q   : Valor actual del registro (16 bits).
//
// Parámetros:
//   Ninguno (el valor de reset se define al instanciar Registro16bitsEna)
// =============================================================================

module RegistroCS (
    input CLK, RST, ENA,
    input [15:0] D,
    output [15:0] Q
);
    // Valor inicial típico en x86: 0xF000
    Registro16bitsEna #(.RESET_VALUE(16'hF000)) u_registro (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA),
        .D(D),
        .Q(Q)
    );
endmodule
