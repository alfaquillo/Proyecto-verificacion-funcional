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
    input CLK,
    input RST,
    input IWR,
    input IRD,
    input RD,
    input WR,
    inout wire [7:0] DataBus,
    inout wire [7:0] InternalBus
);

    // Señales internas con reset asíncrono
    wire [7:0] mux_out;
    wire [7:0] reg_out;
    
    // Mux con entrada limpia
    wire [7:0] clean_internal = RST ? 8'h80 : InternalBus;
    wire [7:0] clean_data = RST ? 8'h80 : DataBus;
    
    Multiplexor2a1de8bits M1(
        .A(clean_internal),
        .B(clean_data),
        .SEL(IRD),
        .OUT(mux_out)
    );

    // Registro con reset asíncrono
    wire reg_enable = RST ? 1'b1 : (WR | IRD);
    wire [7:0] reg_input = RST ? 8'h80 : mux_out;
    
    Registro8Ena R1(
        .CLK(CLK),
        .RST(RST),
        .ENA(reg_enable),
        .D(reg_input),
        .Q(reg_out)
    );

    // Buffers tri-estado con reset asíncrono
    wire actual_IWR = IWR & ~RST;
    wire actual_RD = RD & ~RST;
    
    BufferTri8bits T1(
        .IN(reg_out),
        .ENA(actual_IWR),
        .OUT(DataBus)
    );
    
    BufferTri8bits T2(
        .IN(reg_out),
        .ENA(actual_RD),
        .OUT(InternalBus)
    );

endmodule