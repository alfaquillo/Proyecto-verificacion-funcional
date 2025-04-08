`timescale 1ns / 1ps

// =============================================================================
// Module: BancoDeRegistros
// =============================================================================
// Descripción:
//   Este módulo implementa un banco de registros con capacidad de lectura y 
//   escritura controlada por señales externas. 
//
// Entradas:
//   - CLK : señal de reloj
//   - RST : señal de reset (activo en alto)
//   - RD  : señal de lectura
//   - WR  : señal de escritura
//   - SEL : selección de registro (4 bits)
//
// Salidas:
//   - DATA: bus de datos de 16 bits
//
// Parámetros:
//   - No se han definido parámetros configurables
//
// =============================================================================

module BancoDeRegistros (CLK, RST, RD, WR, SEL, DATA);
    input CLK, RST, RD, WR;
    input [3:0] SEL;
    inout wire [15:0] DATA;

    // Deco de Escritura
    wire [11:0] WE;
    DecodificadorWR Deco(WR, SEL, WE);

    // Registros
    wire [7:0] AL, CL, DL, BL, AH, CH, DH, BH;
    wire [15:0] SP, BP, SI, DI;
    Registros Regs(CLK, RST, SEL[3], DATA, WE, 
        AL, CL, DL, BL, AH, CH, DH, BH, SP, BP, SI, DI);

    // Mux de Salida
    wire [15:0] MOUT;
    Multiplexor16x16 Mux(
        {8'b0, AL},
        {8'b0, CL},
        {8'b0, DL},
        {8'b0, BL},
        {8'b0, AH},
        {8'b0, CH},
        {8'b0, DH},
        {8'b0, BH},
        {AH, AL},
        {CH, CL},
        {DH, DL},
        {BH, BL},
        SP, BP, SI, DI,
        SEL, MOUT);
        
// Triestado

    Triestado Tri(MOUT, RD, DATA);
    
endmodule

