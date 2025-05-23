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

    // Línea 15: Registros seleccionados
    wire [15:0] reg1, reg2;
    
    // Líneas 17-24: Multiplexores originales 
    Multiplexor6a1de16bits mux1(
        .A(BX), .B(SI), .C(DI), .D(BP), .E(SP), .F(16'b0),
        .SEL(M1_SEL),
        .OUT(reg1)
    );
    
    Multiplexor6a1de16bits mux2(
        .A(BX), .B(SI), .C(DI), .D(BP), .E(SP), .F(16'b0),
        .SEL(M2_SEL),
        .OUT(reg2)
    );

           // Suma intermedia: reg1 + reg2
        wire [15:0] sum_regs;
        Sumador16bits suma_registros(
            .A(reg1),
            .B(reg2),
            .OUT(sum_regs)
        );
        
        // Suma final: (reg1 + reg2) + DESP
        wire [15:0] offset;
        Sumador16bits suma_offset(
            .A(sum_regs),
            .B(DESP),
            .OUT(offset)
        );

    // Línea 36: Offset efectivo 
    wire [15:0] effective_offset = OP ? offset : IP;

    // Líneas 38-44: Selección de segmento 
    wire [15:0] data_segment;
    Multiplexor4a1de16bits mux_segmento(
        .A(CS), .B(DS), .C(ES), .D(SS),
        .SEL(SEG_SEL),
        .OUT(data_segment)
    );

    // Línea 46: Segmento final 
    wire [15:0] segment = OP ? data_segment : CS;

    // Línea 49: Cálculo final 
    //assign DIR = {segment, 4'b0} + effective_offset;
    assign DIR = ({segment, 4'b0}) + {4'b0, effective_offset};

endmodule