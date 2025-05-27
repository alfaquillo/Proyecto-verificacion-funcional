// =============================================================================
// Módulo: Registro16bitsEna
// =============================================================================
// Descripción:
//   Este módulo implementa un registro genérico de 16 bits con habilitación
//   de escritura (ENA) y valor de reset configurable mediante un parámetro.
//
//   El registro se actualiza en el flanco positivo del reloj si ENA está 
//   activo. En caso de activarse la señal de reset, el valor del registro 
//   se reinicia al valor especificado por RESET_VALUE.
//
// Entradas:
//   - CLK : Señal de reloj.
//   - RST : Señal de reset asíncrono (positivo).
//   - ENA : Señal de habilitación para escritura.
//   - D   : Dato de entrada de 16 bits.
//
// Salidas:
//   - Q   : Dato de salida del registro (16 bits).
//
// Parámetros:
//   - RESET_VALUE : Valor inicial del registro al activarse el reset.
// =============================================================================

module Registro16bitsEna #(
    parameter RESET_VALUE = 16'h0000
)(
    input CLK, RST, ENA,
    input [15:0] D,
    output reg [15:0] Q
);
    always @(posedge CLK or posedge RST)
        if (RST)
            Q <= RESET_VALUE;   // Carga valor de reset al activarse RST
        else if (ENA)
            Q <= D;             // Carga valor de entrada si ENA está activo
endmodule
