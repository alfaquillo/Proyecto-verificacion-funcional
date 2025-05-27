// =============================================================================
// Módulo: BufINOUT
// =============================================================================
// Descripción:
//   Módulo que controla un bus bidireccional de 8 bits con registro intermedio
//   y buffer tri-state. Gestiona señales de lectura y escritura tanto externas
//   como internas para controlar la habilitación de escritura y lectura.
//
// Entradas:
//   - CLK       : Reloj para sincronización del registro.
//   - RST       : Reset asincrónico para el registro.
//   - IWR       : Control interno de escritura.
//   - IRD       : Control interno de lectura.
//   - WR        : Señal de escritura externa (activo bajo).
//   - RD        : Señal de lectura externa (activo bajo).
//
// Entradas/Salidas:
//   - DataBus   : Bus de datos bidireccional de 8 bits.
//
// Salidas:
//   - InternalBus : Refleja el contenido del registro interno.
//
// Parámetros:
//   Ninguno
// =============================================================================

module BufINOUT (
    input wire CLK,
    input wire RST,
    input wire IWR,      // Control escritura interno
    input wire IRD,      // Control lectura interno
    input wire WR,       // Señal escritura (activo bajo)
    input wire RD,       // Señal lectura (activo bajo)
    inout wire [7:0] DataBus,
    output wire [7:0] InternalBus
);

    wire [7:0] reg_out;
    wire reg_en, bus_en;

    // Instanciación del módulo de control de bus para habilitaciones
    BusControl control (
        .WR_n(WR),
        .RD_n(RD),
        .IWR(IWR),
        .IRD(IRD),
        .RegEn(reg_en),
        .BusEn(bus_en)
    );

    // Registro con enable para almacenar datos entrantes
    Registro8bitsEna registro (
        .CLK(CLK),
        .RST(RST),
        .ENA(reg_en),
        .D(DataBus),
        .Q(reg_out)
    );

    // Buffer tri-state para controlar la salida hacia el bus
    BufferTri8bits buffer (
        .IN(reg_out),
        .ENA(bus_en),
        .OUT(DataBus)
    );

    // La salida interna refleja siempre el contenido del registro
    assign InternalBus = reg_out;

endmodule
