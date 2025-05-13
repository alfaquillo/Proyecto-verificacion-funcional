module GenDir (
    input OP,                // Direcciona datos (1) o instrucciones (0)
    input [1:0] SEG_SEL,     // Selector de segmento
    input [2:0] M1_SEL,      // Selector MUX1
    input [2:0] M2_SEL,      // Selector MUX2
    input [15:0] BX,SI,DI,BP,SP,  // Registros de propósito general
    input [15:0] CS,ES,SS,DS,     // Registros de segmento
    input [15:0] IP,              // Instruction Pointer
    input [15:0] DESP,            // Desplazamiento
    output wire [19:0] DIR        // Dirección física de 20 bits
);

    // Multiplexores para Direccionar con registros
    wire [15:0] OUT_MUX1, OUT_MUX2;
    Multiplexor6a1de16bits M1(BX,SI,DI,BP,SP,16'b0, M1_SEL, OUT_MUX1);
    Multiplexor6a1de16bits M2(BX,SI,DI,BP,SP,16'b0, M2_SEL, OUT_MUX2);

    // Sumadores para cálculo de dirección efectiva
    wire [15:0] OUT_SUM1, OUT_SUM2;
    Sumador16bits SUM1(OUT_MUX1, OUT_MUX2, OUT_SUM1);
    Sumador16bits SUM2(OUT_SUM1, DESP, OUT_SUM2);

    // Multiplexor para elegir entre IP o dirección calculada
    wire [15:0] OUT_MUX3;
    Multiplexor2a1de16bits M3(IP, OUT_SUM2, OP, OUT_MUX3);

    // Multiplexor para selección de segmento
    wire [15:0] OUT_MUX4;
    Multiplexor4a1de16bits M4(CS, ES, DS, SS, SEG_SEL, OUT_MUX4);

    // Multiplexor para elegir CS o segmento seleccionado
    wire [15:0] OUT_MUX5;
    Multiplexor2a1de16bits M5(CS, OUT_MUX4, OP, OUT_MUX5);

    // Sumador final para dirección física de 20 bits
    Sumador20bits SUM_FINAL({4'b0000, OUT_MUX3}, {OUT_MUX5, 4'b0000}, DIR);

endmodule