`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:24:21
// Design Name: 
// Module Name: 
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

module BancoInterfaz8088 (
    input CLK,
    input RST,
    
    // Señales de control
    input IOM,
    input DTR,
    input DEN,
    input ALE,
    input RD,
    input WR,
    input HOLD,
    output HLDA,
    
    // Bus de direcciones/datos
    inout [7:0] AD,
    output [19:0] A,
    
    // Interrupciones
    input INTR,
    input NMI,
    output INTA,
    
    // Registros de propósito general
    input [15:0] BX, SI, DI, BP, SP,
    
    // Señales de control adicionales
    input [1:0] SEG_SEL,
    input [2:0] M1_SEL,
    input [2:0] M2_SEL,
    input [15:0] DESP,
    input OP,
    
    // Control de registros de segmento
    input ENA_CS,
    input ENA_DS,
    input ENA_ES,
    input ENA_SS,
    input [15:0] D_CS,
    input [15:0] D_DS,
    input [15:0] D_ES,
    input [15:0] D_SS,
    
    // Cola de instrucciones
    input QUEUE_ENA,
    input [7:0] QUEUE_IN,
    output [31:0] QUEUE_OUT
);

    // Señales internas
    wire [15:0] CS, DS, ES, SS;
    wire [19:0] physical_addr;
    wire [7:0] internal_data_bus;
    wire buffer_enable;
    
    // Instancia del banco de registros de segmento
    BancodeRegistrosSegmento reg_segmentos (
        .CLK(CLK),
        .RST(RST),
        .ENA_CS(ENA_CS),
        .ENA_DS(ENA_DS),
        .ENA_ES(ENA_ES),
        .ENA_SS(ENA_SS),
        .D_CS(D_CS),
        .D_DS(D_DS),
        .D_ES(D_ES),
        .D_SS(D_SS),
        .Q_CS(CS),
        .Q_DS(DS),
        .Q_ES(ES),
        .Q_SS(SS)
    );
    
    // Instancia del generador de direcciones
    GenDir generador_direcciones (
        .OP(OP),
        .SEG_SEL(SEG_SEL),
        .M1_SEL(M1_SEL),
        .M2_SEL(M2_SEL),
        .BX(BX),
        .SI(SI),
        .DI(DI),
        .BP(BP),
        .SP(SP),
        .CS(CS),
        .ES(ES),
        .SS(SS),
        .DS(DS),
        .IP(16'h0000), // Asumiendo que IP se maneja externamente (echarle un ojo carlos)
        .DESP(DESP),
        .DIR(physical_addr)
    );
    
    // Buffer bidireccional para el bus de datos
    BufINOUT buffer_datos (
        .CLK(CLK),
        .RST(RST),
        .IWR(DTR & ~DEN),
        .IRD(~DTR & ~DEN),
        .RD(RD),
        .WR(WR),
        .DataBus(AD),
        .InternalBus(internal_data_bus)
    );
    
    // Cola de instrucciones (prefetch queue)
    queue cola_instrucciones (
        .CLK(CLK),
        .RST(RST),
        .ENA(QUEUE_ENA),
        .DATAIN(QUEUE_IN),
        .DATAOUT(QUEUE_OUT)
    );
    
    // Registro de instrucción (IP) 

    wire [15:0] IP_out;
    RegistroIP registro_ip (
        .CLK(CLK),
        .RST(RST),
        .ENA(1'b1), 
        .SEL(1'b1), 
        .D(physical_addr[15:0]), // dirección calculada
        .Q(IP_out)
    );
    
    //  control de bus y HLDA

    reg hlda_reg;
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            hlda_reg <= 1'b0;
        end else begin
            hlda_reg <= HOLD;
        end
    end
    assign HLDA = hlda_reg;
    
    // interrupciones 

    reg inta_reg;
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            inta_reg <= 1'b0;
        end else begin
            inta_reg <= INTR & ~HLDA;
        end
    end
    assign INTA = inta_reg;
    
  
    assign A = physical_addr;
    
endmodule