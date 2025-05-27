
// =============================================================================
// Módulo: RegistroES
// =============================================================================
// Descripción:
//   Este módulo implementa el registro del segmento ES (Extra Segment).
//   Internamente instancia un registro de 16 bits con habilitación (ENA)
//   y valor de reset fijo en 0x0000.
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

module RegistroES (
    input CLK, RST, ENA,
    input [15:0] D,
    output [15:0] Q
);
    Registro16bitsEna #(.RESET_VALUE(16'h0000)) u_registro (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA),
        .D(D),
        .Q(Q)
    );
endmodule
