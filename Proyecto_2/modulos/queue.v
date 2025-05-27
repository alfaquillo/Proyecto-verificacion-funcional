`timescale 1ns / 1ps

// =============================================================================
// Módulo: queue
// =============================================================================
// Descripción:
//   Este módulo implementa una cola (queue) de 4 etapas usando registros de 8 bits
//   con habilitación. Cada dato de entrada de 8 bits pasa por 4 registros en serie,
//   generando una salida concatenada de 32 bits que contiene los 4 valores almacenados
//   en orden del más viejo al más nuevo.
//
//   La señal ENA se detecta en flanco positivo (rising edge) para activar la carga
//   de cada registro solo cuando ENA cambia de 0 a 1.
//
// Entradas:
//   - CLK    : Señal de reloj.
//   - RST    : Señal de reset asíncrono (positivo).
//   - ENA    : Señal de habilitación para capturar un nuevo dato en la cola.
//   - DATAIN : Dato de entrada de 8 bits a almacenar.
//
// Salidas:
//   - DATAOUT: Salida concatenada de 32 bits con los 4 valores almacenados,
//              en orden [R4 R3 R2 R1], donde R4 es el dato más antiguo.
//
// Señales internas:
//   - dout1-dout4 : Salidas intermedias de los registros individuales de 8 bits.
//   - ena_edge    : Señal que detecta flanco positivo en ENA para sincronizar la carga.
//
// Parámetros:
//   Ninguno
// =============================================================================

module queue (
    input CLK, 
    input RST,
    input ENA,
    input [7:0] DATAIN,
    output [31:0] DATAOUT
);

    // Señales internas
    wire [7:0] dout1, dout2, dout3, dout4;
    wire [7:0] din2, din3, din4;
    
    // Registro para detectar flanco de subida en ENA
    reg ena_prev;
    wire ena_edge;
    
    // Detecta flanco positivo de ENA
    always @(posedge CLK or posedge RST) begin
        if (RST)
            ena_prev <= 1'b0;
        else
            ena_prev <= ENA;
    end
    
    assign ena_edge = ENA && !ena_prev;
    
    // Registro 1 (entrada directa)
    Registro8bitsEna R1 (
        .CLK(CLK),
        .RST(RST),
        .ENA(ena_edge),
        .D(DATAIN),
        .Q(dout1)
    );
    
    // Registro 2
    Registro8bitsEna R2 (
        .CLK(CLK),
        .RST(RST),
        .ENA(ena_edge),
        .D(dout1),
        .Q(dout2)
    );
    
    // Registro 3
    Registro8bitsEna R3 (
        .CLK(CLK),
        .RST(RST),
        .ENA(ena_edge),
        .D(dout2),
        .Q(dout3)
    );
    
    // Registro 4
    Registro8bitsEna R4 (
        .CLK(CLK),
        .RST(RST),
        .ENA(ena_edge),
        .D(dout3),
        .Q(dout4)
    );
    
    // Salida concatenada de los 4 registros, ordenado del más viejo al más nuevo
    assign DATAOUT = {dout4, dout3, dout2, dout1};

endmodule


endmodule