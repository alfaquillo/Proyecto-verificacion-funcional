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
    
    // Señales de control
    input ENA_CS,
    input ENA_DS,
    input ENA_ES,
    input ENA_SS,
    
    // Buses de entrada
    input [15:0] D_CS,
    input [15:0] D_DS,
    input [15:0] D_ES,
    input [15:0] D_SS,
    
    // Buses de salida
    output [15:0] Q_CS,
    output [15:0] Q_DS,
    output [15:0] Q_ES,
    output [15:0] Q_SS
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
