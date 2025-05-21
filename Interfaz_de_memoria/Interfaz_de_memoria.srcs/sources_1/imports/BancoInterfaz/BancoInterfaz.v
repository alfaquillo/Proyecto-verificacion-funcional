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
    // Entradas de control
    input OP,                    // 0=instrucción, 1=datos
    input [1:0] MOD_DIR,         // Modo de direccionamiento
    input RD_IN,                 // Lectura interna
    input WR_IN,                 // Escritura interna
    input [7:0] BUS_IN,          // Bus de datos de entrada
    input [15:0] INSTRUCCIONES,  // Instrucciones (para IP)
    input [15:0] DESP,           // Desplazamiento
    input [2:0] REG,             // Selección de registro
    input [1:0] SELECT_WR_SEG,   // Selección de segmento para escritura
    input WR_SEG,                // Habilitación de escritura en segmento
    input [15:0] DATA_WR_SEG,    // Datos para escritura en segmento
    input RST,                   // Reset
    input CLK,                   // Reloj
    
    // Entradas desde banco de registros externo
    input [15:0] AX, BX, CX, DX, // Registros de propósito general
    input [15:0] SI, DI, BP, SP, // Registros de índice y punteros
    
    // Salidas
    output [19:0] BUS_DIRECCIONES, // Bus de direcciones físico (20 bits)
    inout [7:0] BUS_DATOS,         // Bus de datos bidireccional
    output RD_OUT,                 // Señal de lectura hacia la memoria
    output WR_OUT                  // Señal de escritura hacia la memoria
);

    // Conexiones internas
    wire [15:0] CS, DS, ES, SS;    // Registros de segmento
    wire [15:0] IP;                 // Instruction Pointer
    wire [7:0] INTERNAL_BUS;        // Bus interno de datos
    wire [31:0] QUEUE_OUT;          // Salida de la cola de prefetch
    
    // Señales de control para registros de segmento
    wire ENA_CS = (SELECT_WR_SEG == 2'b00) & WR_SEG;
    wire ENA_DS = (SELECT_WR_SEG == 2'b01) & WR_SEG;
    wire ENA_ES = (SELECT_WR_SEG == 2'b10) & WR_SEG;
    wire ENA_SS = (SELECT_WR_SEG == 2'b11) & WR_SEG;
    
    // Instancia del banco de registros de segmento
    BancodeRegistrosSegmento u_segment_registers (
        .CLK(CLK),
        .RST(RST),
        .ENA_CS(ENA_CS),
        .ENA_DS(ENA_DS),
        .ENA_ES(ENA_ES),
        .ENA_SS(ENA_SS),
        .D_CS(DATA_WR_SEG),
        .D_DS(DATA_WR_SEG),
        .D_ES(DATA_WR_SEG),
        .D_SS(DATA_WR_SEG),
        .Q_CS(CS),
        .Q_DS(DS),
        .Q_ES(ES),
        .Q_SS(SS)
    );
    
    // Instancia del generador de direcciones
    GenDir u_address_generator (
        .OP(OP),
        .SEG_SEL(MOD_DIR),         // Usamos MOD_DIR para selección de segmento
        .M1_SEL(REG[2:0]),         // Primer registro seleccionado
        .M2_SEL(3'b000),           // Segundo registro (podría conectarse a otra señal)
        .BX(BX),
        .SI(SI),
        .DI(DI),
        .BP(BP),
        .SP(SP),
        .CS(CS),
        .ES(ES),
        .SS(SS),
        .DS(DS),
        .IP(IP),
        .DESP(DESP),
        .DIR(BUS_DIRECCIONES)
    );
    
    // Instancia del buffer bidireccional
    BufINOUT u_io_buffer (
        .CLK(CLK),
        .RST(RST),
        .IWR(WR_IN),
        .IRD(RD_IN),
        .RD(RD_OUT),
        .WR(WR_OUT),
        .DataBus(BUS_DATOS),
        .InternalBus(INTERNAL_BUS)
    );
    
    // Instancia de la cola de prefetch
    queue u_prefetch_queue (
        .CLK(CLK),
        .RST(RST),
        .ENA(RD_OUT),              // Habilitado cuando hay lectura de memoria
        .DATAIN(BUS_DATOS),
        .DATAOUT(QUEUE_OUT)
    );
    
    // Instancia del registro IP
    RegistroIP u_ip_register (
        .CLK(CLK),
        .RST(RST),
        .ENA(1'b1),               // Siempre habilitado por ahora
        .SEL(1'b0),              // 0=incremento, 1=carga (ajustar según necesidad)
        .D(INSTRUCCIONES),        // Entrada para carga directa
        .Q(IP)
    );
    
    // Lógica para señales de control de memoria
    assign RD_OUT = RD_IN & ~WR_IN;
    assign WR_OUT = WR_IN & ~RD_IN;

endmodule