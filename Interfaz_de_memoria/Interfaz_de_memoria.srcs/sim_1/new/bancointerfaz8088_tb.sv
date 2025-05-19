`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2025 19:47:06
// Design Name: 
// Module Name: bancointerfaz8088_tb
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

module BancoInterfaz8088_tb;

    // Parámetros
    parameter CLK_PERIOD = 10; // 10ns = 100MHz

    // Señales de entrada
    reg CLK;
    reg RST;
    reg [7:0] DataBus_in;
    wire [7:0] DataBus = DataBus_in;
    wire [15:0] InternalBus;
    reg RD;
    reg WR;
    reg IOR;
    reg IOW;
    reg M_IO;
    reg [15:0] BX, SI, DI, BP, SP;
    reg [15:0] CS, ES, SS, DS;
    reg [15:0] DESP;
    reg [1:0] SEG_SEL;
    reg [2:0] M1_SEL, M2_SEL;
    reg OP;
    
    // Señales de salida
    wire [19:0] AddrBus;
    wire ALE;
    wire DEN;
    wire DT_R;
    wire ready;
    
    // Instancia del módulo bajo prueba
    BancoInterfaz8088 uut (
        .CLK(CLK),
        .RST(RST),
        .DataBus(DataBus),
        .InternalBus(InternalBus),
        .RD(RD),
        .WR(WR),
        .IOR(IOR),
        .IOW(IOW),
        .M_IO(M_IO),
        .BX(BX),
        .SI(SI),
        .DI(DI),
        .BP(BP),
        .SP(SP),
        .CS(CS),
        .ES(ES),
        .SS(SS),
        .DS(DS),
        .DESP(DESP),
        .SEG_SEL(SEG_SEL),
        .M1_SEL(M1_SEL),
        .M2_SEL(M2_SEL),
        .OP(OP),
        .ALE(ALE),
        .DEN(DEN),
        .DT_R(DT_R),
        .AddrBus(AddrBus),
        .ready(ready)
    );

    // Generación de reloj
    always begin
        CLK = 1'b0;
        #(CLK_PERIOD/2);
        CLK = 1'b1;
        #(CLK_PERIOD/2);
    end

    // Monitor para observar las señales
    initial begin
        $monitor("T=%0t: ALE=%b, DEN=%b, DT_R=%b | AddrBus=%h | DataBus=%h | InternalBus=%h | ready=%b", 
                 $time, ALE, DEN, DT_R, AddrBus, DataBus, InternalBus, ready);
    end

    // Secuencia de prueba
    initial begin
        // Inicialización
        RST = 1'b1;
        RD = 1'b1;  // Inactivo en alto
        WR = 1'b1;
        IOR = 1'b1;
        IOW = 1'b1;
        DataBus_in = 8'hzz;
        M_IO = 1'b0;
        
        // Valores de registros iniciales
        BX = 16'h1234;
        SI = 16'h5678;
        DI = 16'h9ABC;
        BP = 16'hDEF0;
        SP = 16'h2468;
        CS = 16'h1000;
        ES = 16'h2000;
        SS = 16'h3000;
        DS = 16'h4000;
        DESP = 16'h0100;
        SEG_SEL = 2'b00;  // CS
        M1_SEL = 3'b000;  // BX
        M2_SEL = 3'b001;  // SI
        OP = 1'b0;        // Instrucción
        
        #20;
        
        // Fin de reset
        RST = 1'b0;
        
        // Prueba 1: Lectura de memoria
        #10;
        M_IO = 1'b1;      // Operación de memoria
        RD = 1'b0;        // Activar lectura
        DataBus_in = 8'hAA;
        #20;
        RD = 1'b1;
        DataBus_in = 8'hzz;
        
        // Prueba 2: Escritura en memoria
        #20;
        WR = 1'b0;        // Activar escritura
        M1_SEL = 3'b010;  // DI
        DataBus_in = 8'h55;
        #20;
        WR = 1'b1;
        DataBus_in = 8'hzz;
        
        // Prueba 3: Lectura de I/O
        #20;
        M_IO = 1'b0;      // Operación de I/O
        IOR = 1'b0;
        DataBus_in = 8'hCC;
        #20;
        IOR = 1'b1;
        DataBus_in = 8'hzz;
        
        // Prueba 4: Escritura en I/O
        #20;
        IOW = 1'b0;
        DataBus_in = 8'h33;
        #20;
        IOW = 1'b1;
        DataBus_in = 8'hzz;
        
        // Prueba 5: Cambio de segmento
        #20;
        SEG_SEL = 2'b01;  // ES
        M1_SEL = 3'b011;  // BP
        OP = 1'b1;        // Datos
        RD = 1'b0;
        DataBus_in = 8'hF0;
        #20;
        RD = 1'b1;
        DataBus_in = 8'hzz;
        
        #50;
        $finish;
    end

endmodule