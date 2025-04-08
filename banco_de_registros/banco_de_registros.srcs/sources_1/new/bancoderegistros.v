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
module bancoderegistros(
    input        CLK,
    input        RST,
    input        RD,
    input        WR,
    input  [3:0] SEL,
    inout  [15:0] DATA
);
    wire [11:0] WE;
    wire [7:0]  AL, CL, DL, BL, AH, CH, DH, BH;
    wire [15:0] SP, BP, SI, DI;
    wire [15:0] mux_out;

    decodificadorwr deco (
    .WR(WR),
    .SEL(SEL),
    .WE(WE) // [11:0]
    );
    
    registros regs(
        .CLK(CLK),
        .RST(RST),
        .DATA(DATA),
        .WE(WE),
        .AL(AL), .CL(CL), .DL(DL), .BL(BL),
        .AH(AH), .CH(CH), .DH(DH), .BH(BH),
        .SP(SP), .BP(BP), .SI(SI), .DI(DI)
    );

    multiplexor16x16 mux(
        /* Registros de 8 bits (parte baja) */
        .A0({8'b0, AL}),  // SEL=0: AL (extendido a 16 bits)
        .A1({8'b0, CL}),  // SEL=1: CL
        .A2({8'b0, DL}),  // SEL=2: DL
        .A3({8'b0, BL}),  // SEL=3: BL
        
        /* Registros de 8 bits (parte alta) */
        .A4({8'b0, AH}),  // SEL=4: AH
        .A5({8'b0, CH}),  // SEL=5: CH
        .A6({8'b0, DH}),  // SEL=6: DH
        .A7({8'b0, BH}),  // SEL=7: BH
        
        /* Registros combinados de 16 bits */
        .A8({AH, AL}),    // SEL=8: AX (AH:AL)
        .A9({CH, CL}),    // SEL=9: CX (CH:CL)
        .A10({DH, DL}),   // SEL=A: DX (DH:DL)
        .A11({BH, BL}),   // SEL=B: BX (BH:BL)
        
        /* Registros de 16 bits puros */
        .A12(SP),         // SEL=C: SP
        .A13(BP),         // SEL=D: BP
        .A14(SI),         // SEL=E: SI
        .A15(DI),         // SEL=F: DI
        
        .SEL(SEL),
        .OUT(mux_out)
    );

    triestado tri_buf(
        .IN(mux_out),
        .SEL(RD),
        .OUT(DATA)
    );
endmodule