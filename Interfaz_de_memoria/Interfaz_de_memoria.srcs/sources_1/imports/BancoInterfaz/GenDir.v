`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:24:21
// Design Name: 
// Module Name: GenDir
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module GenDir (
    input OP,                // 0=instrucción, 1=datos
    input [1:0] SEG_SEL,     // Selector de segmento
    input [2:0] M1_SEL,      // Selector MUX1 (primer registro)
    input [2:0] M2_SEL,      // Selector MUX2 (segundo registro)
    input [15:0] BX, SI, DI, BP, SP,
    input [15:0] CS, ES, SS, DS,
    input [15:0] IP,
    input [15:0] DESP,
    output wire [19:0] DIR
);

    // Registros seleccionados
    wire [15:0] reg1, reg2;
    
    // Multiplexores para selección de registros
    Multiplexor6a1de16bits MUX1(
        .A(BX), .B(SI), .C(DI), .D(BP), .E(SP), .F(16'b0),
        .SEL(M1_SEL),
        .OUT(reg1)
    );
    
    Multiplexor6a1de16bits MUX2(
        .A(BX), .B(SI), .C(DI), .D(BP), .E(SP), .F(16'b0),
        .SEL(M2_SEL),
        .OUT(reg2)
    );

    // Cálculo de offset
    wire [15:0] sum_regs, offset;
    Sumador16bits SUM_REGS(reg1, reg2, sum_regs);
    Sumador16bits SUM_OFFSET(sum_regs, DESP, offset);

    // Offset efectivo (IP para instrucciones)
    wire [15:0] effective_offset = OP ? offset : IP;

    // Selección de segmento para datos
    wire [15:0] data_segment;
    Multiplexor4a1de16bits MUX_SEG(
        .A(CS), .B(ES), .C(DS), .D(SS),
        .SEL(SEG_SEL),
        .OUT(data_segment)
    );

    // Segmento final (CS para instrucciones)
    wire [15:0] segment = OP ? data_segment : CS;

    // Cálculo de dirección física
    assign DIR = {segment, 4'b0} + effective_offset;

endmodule