`timescale 1ns / 1ps

// =============================================================================
// Module: 
// =============================================================================
// Descripción:
//   
//
// Entradas:
//   
//   
//   
//   
//
// Salidas:
//   
//
// Parámetros:
//   
//
// =============================================================================

module decodificadorwr(
    input        WR,
    input  [3:0] SEL,
    output reg [11:0] WE
);
always @(*) begin
    WE = 12'h0;  // Default value
    if (WR) begin
        case (SEL)
            4'h0: WE = 12'h800;  // AL
            4'h1: WE = 12'h400;  // CL
            4'h2: WE = 12'h200;  // DL
            4'h3: WE = 12'h100;  // BL
            4'h4: WE = 12'h080;  // AH
            4'h5: WE = 12'h040;  // CH
            4'h6: WE = 12'h020;  // DH
            4'h7: WE = 12'h010;  // BH
            4'h8: WE = 12'h880;  // AX
            4'h9: WE = 12'h440;  // CX
            4'hA: WE = 12'h220;  // DX
            4'hB: WE = 12'h110;  // BX
            4'hC: WE = 12'h008;  // SP
            4'hD: WE = 12'h004;  // BP
            4'hE: WE = 12'h002;  // SI
            4'hF: WE = 12'h001;  // DI
        endcase
    end
end
endmodule