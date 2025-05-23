`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 09:10:08
// Design Name: 
// Module Name: BancodeRegistrosSegmento
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


module BancodeRegistrosSegmento (
    input CLK, RST,
    input ENA_CS, ENA_DS, ENA_ES, ENA_SS,
    input [15:0] D_CS, D_DS, D_ES, D_SS,
    output [15:0] Q_CS, Q_DS, Q_ES, Q_SS
);

    // Instanciación de los registros
    RegistroCS u_registro_cs (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA_CS),
        .D(D_CS),
        .Q(Q_CS)
    );
    
    RegistroDS u_registro_ds (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA_DS),
        .D(D_DS),
        .Q(Q_DS)
    );
    
    RegistroES u_registro_es (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA_ES),
        .D(D_ES),
        .Q(Q_ES)
    );
    
    RegistroSS u_registro_ss (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA_SS),
        .D(D_SS),
        .Q(Q_SS)
    );

endmodule
