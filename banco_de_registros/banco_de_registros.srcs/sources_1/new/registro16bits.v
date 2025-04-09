`timescale 1ns / 1ps

// =============================================================================
// Module: registro16bits
// =============================================================================
// Descripción:
//   Este módulo implementa un registro de 16 bits con ENA
//
// Entradas:
//   - CLK: señal de reloj
//   - RST: señal de reset (activo en alto)
//   - ENA: señal de habilitación de escritura
//   - D  : dato de entrada de 16 bits
//
// Salidas:
//   - Q  : dato de salida de 16 bits
//
// Parámetros:
//   - No se han definido parámetros configurables
//
// =============================================================================

module registro16bits(
    input        CLK,
    input        RST,
    input        ENA,
    input [15:0] D,
    output reg [15:0] Q
);
always @(posedge CLK or posedge RST) begin
    if (RST) begin
        Q <= 16'h0000;  // Reset asíncrono
    end
    else if (ENA) begin
        Q <= D;         // Carga sincrónica
    end
    // Nota: Se omite el 'else', Q mantiene su valor automáticamente
end
endmodule