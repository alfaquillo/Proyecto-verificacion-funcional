`timescale 1ns / 1ps

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
    
    // Lógica de enable por flanco
    reg ena_prev;
    wire ena_edge;
    
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
    
    // Orden de salida: [R4 R3 R2 R1] (primero el más viejo)
    assign DATAOUT = {dout4, dout3, dout2, dout1};

endmodule