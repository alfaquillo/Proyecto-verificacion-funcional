// =============================================================================
// Módulo: BufferTri8bits
// =============================================================================
// Descripción:
//   Buffer tri-state de 8 bits que controla la conexión entre una señal de
//   entrada y un bus de salida bidireccional. Cuando ENA está activo, se
//   transmite el dato IN hacia OUT; cuando ENA está inactivo, el bus queda en alta impedancia.
//
// Entradas:
//   - IN  : Señal de entrada de 8 bits.
//   - ENA : Señal de habilitación del buffer.
//
// Entrada/Salida:
//   - OUT : Bus bidireccional de 8 bits, salida tri-state.
//
// Parámetros:
//   Ninguno
// =============================================================================

module BufferTri8bits (
    input  wire [7:0] IN,
    input  wire ENA,
    inout  wire [7:0] OUT
);

    assign OUT = (ENA) ? IN : 8'bz;

endmodule
