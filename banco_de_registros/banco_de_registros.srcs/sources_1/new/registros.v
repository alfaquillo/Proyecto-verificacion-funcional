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

module registros (CLK, RST, DATA, WE, 
        AL, CL, DL, BL, AH, CH, DH, BH, SP, BP, SI, DI);

    input CLK, RST;
    input [15:0] DATA;
    input [11:0] WE;
    
    output wire [7:0] AL, CL, DL, BL, AH, CH, DH, BH;
    output wire [15:0] SP, BP, SI, DI;

    // AL, CL, DL, BL, AH, CH, DH, BH, SP, SI, DI
    // Registros de 8 bits
    registro8bits RAL (CLK, RST, WE[11], DATA[7:0], AL);
    registro8bits RCL (CLK, RST, WE[10], DATA[7:0], CL);
    registro8bits RDL (CLK, RST, WE[9],  DATA[7:0], DL);
    registro8bits RBL (CLK, RST, WE[8],  DATA[7:0], BL);
    registro8bits RAH (CLK, RST, WE[7],  DATA[15:8], AH);
    registro8bits RCH (CLK, RST, WE[6],  DATA[15:8], CH);
    registro8bits RDH (CLK, RST, WE[5],  DATA[15:8], DH);
    registro8bits RBH (CLK, RST, WE[4],  DATA[15:8], BH);

    // Registros de 16 bits
    registro16bits RSP (CLK, RST, WE[3], DATA, SP);
    registro16bits RBP (CLK, RST, WE[2], DATA, BP);
    registro16bits RSI (CLK, RST, WE[1], DATA, SI);
    registro16bits RDI (CLK, RST, WE[0], DATA, DI);

endmodule