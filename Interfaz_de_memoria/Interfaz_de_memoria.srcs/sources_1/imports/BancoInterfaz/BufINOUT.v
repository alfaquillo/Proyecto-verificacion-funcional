`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:24:21
// Design Name: 
// Module Name: BufINOUT 
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
module BufINOUT (
    input  wire        CLK,
    input  wire        RST,
    input  wire        IWR,
    input  wire        IRD,
    input  wire        RD,
    input  wire        WR,
    inout  wire [7:0]  DataBus,
    inout  wire [7:0]  InternalBus
);

    wire [7:0] OUT_MUX;
    wire [7:0] OUT_R1;

    // Mux: IRD=0→InternalBus, IRD=1→DataBus
    Multiplexor2a1de8bits M1(
        .A(InternalBus),
        .B(DataBus),
        .SEL(IRD),
        .OUT(OUT_MUX)
    );

    // Registro con reset a 0x80 - Solo se actualiza con WR
    Registro8bitsEna R1(
        .CLK(CLK),
        .RST(RST),
        .ENA(WR),  // Cambio clave aquí
        .D(OUT_MUX),
        .Q(OUT_R1)
    );

    // Buffers tri-estado con protección contra conducción simultánea
    wire enableDataBus = IWR & ~RST & ~RD;
    wire enableInternalBus = RD & ~RST & ~IWR;

    BufferTri8bits T1(
        .IN(OUT_R1),
        .ENA(enableDataBus),
        .OUT(DataBus)
    );
    
    BufferTri8bits T2(
        .IN(OUT_R1),
        .ENA(enableInternalBus),
        .OUT(InternalBus)
    );

endmodule