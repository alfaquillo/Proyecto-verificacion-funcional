`timescale 1ns / 1ps

// =============================================================================
// Module: Registros
// =============================================================================
// Descripción:
//   Este módulo contiene el conjunto de registros del 8088, incluyendo
//   registros de 8 y 16 bits.
//
// Entradas:
//   - CLK  : señal de reloj
//   - RST  : señal de reset
//   - DATA : entrada de datos de 16 bits
//   - WE   : señales de habilitación de escritura para cada registro
//
// Salidas:
//   - AL, CL, DL, BL, AH, CH, DH, BH : registros de 8 bits
//   - SP, BP, SI, DI                 : registros de 16 bits
//
// Parámetros:
//   - No se han definido parámetros configurables
//
// =============================================================================

module registros(
    input         CLK,
    input         RST,
    input  [15:0] DATA,
    input  [11:0] WE,
    output [7:0]  AL, CL, DL, BL, AH, CH, DH, BH,
    output [15:0] SP, BP, SI, DI
);

    // Registros de 8 bits (partes bajas)
    registro8bits RAL (.CLK(CLK), .RST(RST), .ENA(WE[11]), .D(DATA[7:0]), .Q(AL));
    registro8bits RCL (.CLK(CLK), .RST(RST), .ENA(WE[10]), .D(DATA[7:0]), .Q(CL));
    registro8bits RDL (.CLK(CLK), .RST(RST), .ENA(WE[9]),  .D(DATA[7:0]), .Q(DL));
    registro8bits RBL (.CLK(CLK), .RST(RST), .ENA(WE[8]),  .D(DATA[7:0]), .Q(BL));

    // Registros de 8 bits (partes altas)
    registro8bits RAH (.CLK(CLK), .RST(RST), .ENA(WE[7]),  .D(DATA[15:8]), .Q(AH));
    registro8bits RCH (.CLK(CLK), .RST(RST), .ENA(WE[6]),  .D(DATA[15:8]), .Q(CH));
    registro8bits RDH (.CLK(CLK), .RST(RST), .ENA(WE[5]),  .D(DATA[15:8]), .Q(DH));
    registro8bits RBH (.CLK(CLK), .RST(RST), .ENA(WE[4]),  .D(DATA[15:8]), .Q(BH));

    // Registros de 16 bits (implementados como pares)
    registro16bits RSP (.CLK(CLK), .RST(RST), .ENA(WE[3]), .D(DATA), .Q(SP));
    registro16bits RBP (.CLK(CLK), .RST(RST), .ENA(WE[2]), .D(DATA), .Q(BP));
    registro16bits RSI (.CLK(CLK), .RST(RST), .ENA(WE[1]), .D(DATA), .Q(SI));
    registro16bits RDI (.CLK(CLK), .RST(RST), .ENA(WE[0]), .D(DATA), .Q(DI));

endmodule