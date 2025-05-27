// =============================================================================
// Módulo: Registro8bitsEna
// =============================================================================
// Descripción:
//   Este módulo implementa un registro de 8 bits con habilitación de escritura
//   (ENA) y un valor de reset fijo en 0x80.
//
//   El registro se actualiza en el flanco positivo del reloj si ENA está activo.
//   Cuando se activa el reset, el registro se inicializa con el valor 0x80.
//
// Entradas:
//   - CLK : Señal de reloj.
//   - RST : Señal de reset asíncrono (positivo).
//   - ENA : Señal de habilitación para escribir el dato.
//   - D   : Dato de entrada de 8 bits.
//
// Salidas:
//   - Q   : Valor actual del registro (8 bits).
//
// Parámetros:
//   Ninguno
// =============================================================================

module Registro8bitsEna (
    input wire CLK,
    input wire RST,
    input wire ENA,
    input wire [7:0] D,
    output reg [7:0] Q
);
    always @(posedge CLK or posedge RST) begin
        if (RST)
            Q <= 8'h80;    // Valor de reset fijo en 0x80
        else if (ENA)
            Q <= D;        // Carga el dato de entrada si ENA está activo
    end
endmodule
