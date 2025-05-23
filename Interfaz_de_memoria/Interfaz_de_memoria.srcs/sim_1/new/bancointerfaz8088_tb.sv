`timescale 1ns / 1ps

module BancoInterfaz8088_tb;

    // Parámetros
    parameter CLK_PERIOD = 10;
    localparam TEST_DELAY = CLK_PERIOD * 2;
    
    // Señales
    reg CLK = 0;
    reg RST;
    
    // Señales de control
    reg IOM, DTR, DEN, ALE, RD, WR, HOLD;
    wire HLDA;
    
    // Bus de direcciones/datos
    wire [7:0] AD;
    wire [19:0] A;
    
    // Interrupciones
    reg INTR, NMI;
    wire INTA;
    
    // Registros de propósito general
    reg [15:0] BX, SI, DI, BP, SP;
    
    // Señales de control adicionales
    reg [1:0] SEG_SEL;
    reg [2:0] M1_SEL, M2_SEL;
    reg [15:0] DESP;
    reg OP;
    
    // Registros de segmento
    reg ENA_CS, ENA_DS, ENA_ES, ENA_SS;
    reg [15:0] D_CS, D_DS, D_ES, D_SS;
    
    // Cola de instrucciones
    reg QUEUE_ENA;
    reg [7:0] QUEUE_IN;
    wire [31:0] QUEUE_OUT;
    
    // Driver del bus de datos
    reg [7:0] ad_driver;
    reg ad_oe;
    assign AD = ad_oe ? ad_driver : 8'bz;
    
    // Instancia del DUT
    BancoInterfaz8088 dut (
        .CLK(CLK),
        .RST(RST),
        .IOM(IOM),
        .DTR(DTR),
        .DEN(DEN),
        .ALE(ALE),
        .RD(RD),
        .WR(WR),
        .HOLD(HOLD),
        .HLDA(HLDA),
        .AD(AD),
        .A(A),
        .INTR(INTR),
        .NMI(NMI),
        .INTA(INTA),
        .BX(BX),
        .SI(SI),
        .DI(DI),
        .BP(BP),
        .SP(SP),
        .SEG_SEL(SEG_SEL),
        .M1_SEL(M1_SEL),
        .M2_SEL(M2_SEL),
        .DESP(DESP),
        .OP(OP),
        .ENA_CS(ENA_CS),
        .ENA_DS(ENA_DS),
        .ENA_ES(ENA_ES),
        .ENA_SS(ENA_SS),
        .D_CS(D_CS),
        .D_DS(D_DS),
        .D_ES(D_ES),
        .D_SS(D_SS),
        .QUEUE_ENA(QUEUE_ENA),
        .QUEUE_IN(QUEUE_IN),
        .QUEUE_OUT(QUEUE_OUT)
    );
    
    // Instancia del Scoreboard
    BancoInterfaz8088_scoreboard sb (
        .CLK(CLK),
        .RST(RST),
        .A(A),
        .AD(AD),
        .INTA(INTA),
        .HLDA(HLDA),
        .QUEUE_OUT(QUEUE_OUT),
        .internal_data_bus(dut.internal_data_bus)
    );
    
    // Instancia del Coverage
    BancoInterfaz8088_coverage cov (
        .CLK(CLK),
        .IOM(IOM),
        .DTR(DTR),
        .DEN(DEN),
        .RD(RD),
        .WR(WR),
        .HOLD(HOLD),
        .HLDA(HLDA),
        .INTR(INTR),
        .NMI(NMI),
        .SEG_SEL(SEG_SEL),
        .M1_SEL(M1_SEL),
        .M2_SEL(M2_SEL),
        .OP(OP),
        .ENA_CS(ENA_CS),
        .ENA_DS(ENA_DS),
        .ENA_ES(ENA_ES),
        .ENA_SS(ENA_SS),
        .QUEUE_ENA(QUEUE_ENA)
    );
    
    // Generación de reloj
    always #(CLK_PERIOD/2) CLK = ~CLK;
    
    // Incluir archivo de tareas
    `include "BancoInterfaz8088_tasks.vh"
    
    // Secuencia de pruebas
    initial begin
        $timeformat(-9, 3, "ns", 6);
        $display("\n--- TESTBENCH INICIADO ---");
        
        // 1. Inicialización y Reset
        init_signals();
        reset();
        
        // 2. Pruebas de Registros
        load_segment_registers();
        init_general_registers();
        
        // 3. Pruebas de Generación de Direcciones
        run_address_generation_tests();
        
        // 4. Pruebas de Bus de Datos
        run_data_bus_tests();
        
        // 5. Pruebas de Control
        run_control_tests();
        
        // Finalización
        #(CLK_PERIOD*2);
        $display("\n--- TESTBENCH FINALIZADO ---");
        sb.report();
        $finish;
    end

endmodule