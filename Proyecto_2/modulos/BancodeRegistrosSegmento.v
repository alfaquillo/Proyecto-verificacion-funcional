`timescale 1ns / 1ps
// =============================================================================
// Módulo: BancodeRegistrosSegmento
// =============================================================================
// Descripción:
//   Este módulo implementa un banco de registros de segmento compuesto por 
//   cuatro registros independientes: CS (Code Segment), DS (Data Segment), 
//   ES (Extra Segment) y SS (Stack Segment). Cada registro puede ser habilitado
//   individualmente y se actualiza en el flanco positivo del reloj si su 
//   señal de habilitación está activa.
//
// Entradas:
//   - CLK     : Señal de reloj.
//   - RST     : Señal de reset síncrono para todos los registros.
//   - ENA_CS  : Habilitación para escribir en el registro CS.
//   - ENA_DS  : Habilitación para escribir en el registro DS.
//   - ENA_ES  : Habilitación para escribir en el registro ES.
//   - ENA_SS  : Habilitación para escribir en el registro SS.
//   - D_CS    : Dato de entrada para el registro CS (16 bits).
//   - D_DS    : Dato de entrada para el registro DS (16 bits).
//   - D_ES    : Dato de entrada para el registro ES (16 bits).
//   - D_SS    : Dato de entrada para el registro SS (16 bits).
//
// Salidas:
//   - Q_CS    : Salida del registro CS (16 bits).
//   - Q_DS    : Salida del registro DS (16 bits).
//   - Q_ES    : Salida del registro ES (16 bits).
//   - Q_SS    : Salida del registro SS (16 bits).
//
// Parámetros:
//   Ninguno
// =============================================================================

module BancodeRegistrosSegmento (
    input CLK, RST,
    input ENA_CS, ENA_DS, ENA_ES, ENA_SS,
    input [15:0] D_CS, D_DS, D_ES, D_SS,
    output [15:0] Q_CS, Q_DS, Q_ES, Q_SS
);

    // Instanciación de los registros con habilitación y reset síncrono
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
