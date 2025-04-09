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
    WE = 12'b000000000000;  // Default value
    if (WR) begin
        case (SEL)
            
             // Partes ALTAS (WE[7:4])
            4'h0: WE = 12'b000010000000;  // AH (WE[7])
            4'h1: WE = 12'b000001000000;  // CH (WE[6])
            4'h2: WE = 12'b000000100000;  // DH (WE[5])
            4'h3: WE = 12'b000000010000;  // BH (WE[4])
                        
            // Partes BAJAS (WE[11:8])
            4'h4: WE = 12'b100000000000;  // AL (WE[11])
            4'h5: WE = 12'b010000000000;  // CL (WE[10])
            4'h6: WE = 12'b001000000000;  // DL (WE[9])
            4'h7: WE = 12'b000100000000;  // BL (WE[8])
         
            // Registros COMBINADOS (activan alta + baja)
            4'h8: WE = 12'b100010000000;  // AX (AL[11] + AH[7])
            4'h9: WE = 12'b010001000000;  // CX (CL[10] + CH[6])
            4'hA: WE = 12'b001000100000;  // DX (DL[9] + DH[5])
            4'hB: WE = 12'b000100010000;  // BX (BL[8] + BH[4])
            
            // Registros 16-bit completos (WE[3:0])
            4'hC: WE = 12'b000000001000;  // SP (WE[3])
            4'hD: WE = 12'b000000000100;  // BP (WE[2])
            4'hE: WE = 12'b000000000010;  // SI (WE[1])
            4'hF: WE = 12'b000000000001;  // DI (WE[0])
        endcase
    end
end
endmodule