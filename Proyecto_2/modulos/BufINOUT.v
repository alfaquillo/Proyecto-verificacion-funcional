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
    input wire CLK,
    input wire RST,
    input wire IWR,      // Control escritura interno
    input wire IRD,      // Control lectura interno
    input wire WR,     // Señal escritura (activo bajo)
    input wire RD,     // Señal lectura (activo bajo)
    inout wire [7:0] DataBus,
    output wire [7:0] InternalBus
);

    wire [7:0] reg_out;
    wire reg_en, bus_en;

    // Instanciación de módulos
    BusControl control (
        .WR_n(WR),
        .RD_n(RD),
        .IWR(IWR),
        .IRD(IRD),
        .RegEn(reg_en),
        .BusEn(bus_en)
    );

    Registro8bitsEna registro (
        .CLK(CLK),
        .RST(RST),
        .ENA(reg_en),
        .D(DataBus),
        .Q(reg_out)
    );

    BufferTri8bits buffer (
        .IN(reg_out),
        .ENA(bus_en),
        .OUT(DataBus)
    );

    // La salida interna siempre refleja el registro
    assign InternalBus = reg_out;

endmodule