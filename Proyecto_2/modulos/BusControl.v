// =============================================================================
// Módulo: BusControl
// =============================================================================
// Descripción:
//   Control de habilitación para registros y buffers tri-state en función
//   de señales de lectura/escritura externas e internas.
//
// Entradas:
//   - WR_n  : Señal de escritura externa (activo bajo).
//   - RD_n  : Señal de lectura externa (activo bajo).
//   - IWR   : Control de escritura interno.
//   - IRD   : Control de lectura interno.
//
// Salidas:
//   - RegEn : Señal de habilitación para registros.
//   - BusEn : Señal de habilitación para buffers tri-state.
//
// Parámetros:
//   Ninguno
// =============================================================================

module BusControl (
    input wire WR_n,     // Señal de escritura (activo bajo)
    input wire RD_n,     // Señal de lectura (activo bajo)
    input wire IWR,      // Control escritura interno
    input wire IRD,      // Control lectura interno
    output wire RegEn,   // Enable para registro
    output wire BusEn    // Enable para buffer tri-state
);
    // Habilitar registro solo cuando escritura externa activa y control interno activo
    assign RegEn = (!WR_n && IWR);

    // Habilitar bus solo cuando lectura externa activa y control interno activo
    assign BusEn = (!RD_n && IRD);

endmodule
