// =============================================================================
// Module: registro_SP.v
// =============================================================================
// Descripción:
//   modulo de puntero stack
//
// Entradas:
//   - CLK: señal de reloj
//   - RST: señal de reset
//   - ENA: señal de habilitación
//   - D:   entrada de datos 16 bit
//
// Salidas:
//   - Q: Salida datos 16 bits
//
// Parámetros:
//   - Ninguno
//
// =============================================================================

module RegistroSP(
    input CLK,
    input RST,
    input ENA,
    input [15:0] D,
    output reg [15:0] Q
);

    always @(negedge CLK or posedge RST)
        if (RST)
            Q <= 16'h0000; // reset
        else if (ENA)
            Q <= D; // carga
        else
            Q <= Q; // mantiene valor

endmodule