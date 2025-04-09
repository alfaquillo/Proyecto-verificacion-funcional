`timescale 1ns / 1ps

// =============================================================================
// Module: 
// =============================================================================
// Descripción:
//   
//
// Entradas:
//   - CLK: señal de reloj
//   - RST: señal de reset
//   
//   
//
// Salidas:
//   
//
// Parámetros:
//   
//
// =============================================================================

module registro8bits(
    input wire CLK,
    input wire RST,
    input wire ENA,
    input wire [7:0] D,
    output reg [7:0] Q
);
always @(posedge CLK or posedge RST) begin
    if (RST) 
        Q <= 8'b0;           // Reset asíncrono
    else if (ENA)
        Q <= D;              // Carga sincrónica
    // Nota: Se omite el else, implícitamente mantiene Q
end
endmodule