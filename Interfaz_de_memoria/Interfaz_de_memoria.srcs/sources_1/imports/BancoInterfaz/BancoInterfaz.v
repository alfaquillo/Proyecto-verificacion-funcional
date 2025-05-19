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
    // Entradas del sistema
    input CLK,
    input RST,
    
    // Bus de datos
    inout [7:0] DataBus,
    inout [15:0] InternalBus,
    
    // Señales de control
    input RD,
    input WR,
    input IOR,
    input IOW,
    input M_IO,      // 1=Memoria, 0=I/O
    
    // Registros del procesador
    input [15:0] BX, SI, DI, BP, SP,  // Registros de propósito general
    input [15:0] CS, ES, SS, DS,      // Registros de segmento
    input [15:0] DESP,                 // Desplazamiento
    
    // Señales de estado
    input [1:0] SEG_SEL,     // Selector de segmento
    input [2:0] M1_SEL,      // Selector MUX1
    input [2:0] M2_SEL,      // Selector MUX2
    input OP,                // 1=Datos, 0=Instrucciones
    
    // Salidas de control
    output ALE,
    output DEN,
    output DT_R,
    
    // Bus de direcciones
    output [19:0] AddrBus,
    
    // Salida de estado
    output ready
);

    // Conexiones internas
    wire [19:0] physical_addr;
    wire [15:0] ip_value;
    wire [7:0] queue_out;
    wire [31:0] queue_data_out;
    
    // Instancia del generador de direcciones
    GenDir address_generator (
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
        .IP(ip_value),
        .DESP(DESP),
        .DIR(physical_addr)
    );
    
    // Instancia del registro IP
    RegistroIP ip_register (
        .CLK(CLK),
        .RST(RST),
        .ENA(1'b1),  // Habilitación permanente (ajustar según necesidad)
        .SEL(OP),    // Selección basada en operación
        .D(InternalBus[15:0]),
        .Q(ip_value)
    );
    
    // Instancia de la cola de instrucciones
    queue instruction_queue (
        .CLK(CLK),
        .RST(RST),
        .ENA(RD & M_IO),  // Habilitar solo en lecturas de memoria
        .DATAIN(DataBus),
        .DATAOUT(queue_data_out)
    );
    
    // Buffer de datos bidireccional (versión adaptada para 16 bits)
    BufINOUT data_buffer (
        .CLK(CLK),
        .RST(RST),
        .IWR(IOW | WR),
        .IRD(IOR | RD),
        .RD(RD),
        .WR(WR),
        .DataBus(DataBus),
        .InternalBus(InternalBus[7:0])  // Conexión a la parte baja del bus interno
    );
    
    // Lógica para manejar la parte alta del bus interno
    assign InternalBus[15:8] = (RD & M_IO) ? queue_data_out[15:8] : 8'bz;
    
    // Lógica de control mejorada
    assign ALE = ~(RD | WR | IOR | IOW);  // Active low durante el ciclo de dirección
    assign DEN = (RD | WR | IOR | IOW);   // Habilitación de datos
    assign DT_R = (WR | IOW);             // Dirección del flujo de datos
    
    // Registro de dirección
    reg [19:0] addr_latch;
    always @(negedge ALE or posedge RST) begin
        if (RST)
            addr_latch <= 20'h00000;
        else
            addr_latch <= physical_addr;
    end
    
    // Asignación del bus de direcciones
    assign AddrBus = addr_latch;
    
    // Señal de ready (puede ser más compleja según necesidades)
    assign ready = ~(queue_data_out[31:24] == 8'hFF);  // Ejemplo simple
    
endmodule