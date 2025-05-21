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
    parameter CLK_PERIOD = 10ns;
    localparam TEST_DELAY = CLK_PERIOD * 1.1;
    
    // Señales
    logic CLK = 0;
    logic RST;
    
    // Señales de control
    logic IOM, DTR, DEN, ALE, RD, WR, HOLD;
    logic INTR, NMI;
    
    // Registros
    logic [15:0] BX, SI, DI, BP, SP;
    logic [1:0] SEG_SEL;
    logic [2:0] M1_SEL, M2_SEL;
    logic [15:0] DESP;
    logic OP;
    
    // Registros de segmento
    logic ENA_CS, ENA_DS, ENA_ES, ENA_SS;
    logic [15:0] D_CS, D_DS, D_ES, D_SS;
    
    // Cola de instrucciones
    logic QUEUE_ENA;
    logic [7:0] QUEUE_IN;
    
    // Salidas
    wire HLDA;
    wire [7:0] AD;
    wire [19:0] A;
    wire INTA;
    wire [31:0] QUEUE_OUT;
    
    // Instancia del DUT
    BancoInterfaz8088 dut (.*);
    
    // Generación de reloj
    always #(CLK_PERIOD/2) CLK = ~CLK;
    
    // Tarea para verificar direcciones
    task automatic verify_address(
        input [1:0] seg_sel,
        input [2:0] m1_sel,
        input [15:0] desp,
        input [19:0] expected,
        input string test_name
    );
        SEG_SEL = seg_sel;
        M1_SEL = m1_sel;
        DESP = desp;
        #TEST_DELAY;
        
        $display("[%0t] Test: %s", $time, test_name);
        $display("  Config: SEG=%b, M1=%b, DESP=%h", seg_sel, m1_sel, desp);
        $display("  Esperado: %h  Obtenido: %h", expected, A);
        
        if (A !== expected) begin
            $error("  ERROR: Dirección incorrecta");
            // Debug detallado
            $display("  CS=%h, ES=%h, BX=%h, DI=%h", dut.CS, dut.ES, BX, DI);
            $display("  physical_addr = (seg<<4) + offset");
            $display("  Para ES:DI -> (%h << 4) + %h + %h = %h", 
                    dut.ES, DI, desp, {dut.ES, 4'b0} + DI + desp);
        end else begin
            $display("  OK");
        end
    endtask
    
    // Tarea para reset
    task automatic reset();
        $display("\n[%0t] Applying reset...", $time);
        RST = 1;
        #(CLK_PERIOD*2);
        RST = 0;
        #(CLK_PERIOD);
        $display("[%0t] Reset complete", $time);
    endtask
    
    // Inicialización
    initial begin
        $timeformat(-9, 3, "ns", 6);
        $display("\n========== TESTBENCH INICIADO ==========");
        
        // Inicializar señales
        {IOM, DTR, DEN, ALE, RD, WR} = '0;
        {HOLD, INTR, NMI} = '0;
        {ENA_CS, ENA_DS, ENA_ES, ENA_SS} = '0;
        QUEUE_ENA = 0;
        
        // Reset inicial
        reset();
        
        // Cargar registros de segmento
        $display("\n[%0t] Cargando registros de segmento...", $time);
        ENA_CS = 1; D_CS = 16'h1234;
        ENA_DS = 1; D_DS = 16'h5678;
        ENA_ES = 1; D_ES = 16'h9ABC;
        ENA_SS = 1; D_SS = 16'hDEF0;
        #TEST_DELAY;
        {ENA_CS, ENA_DS, ENA_ES, ENA_SS} = '0;
        $display("  CS=%h, DS=%h, ES=%h, SS=%h", dut.CS, dut.DS, dut.ES, dut.SS);
        
        // Inicializar registros
        BX = 16'h0001; 
        SI = 16'h0002; 
        DI = 16'h0003; 
        BP = 16'h0004; 
        SP = 16'h0005;
        
        // Pruebas de generación de direcciones
        $display("\n[%0t] Pruebas de generación de direcciones:", $time);
        
        // Test 1: CS:BX + 0x0010 = 1234:0001 + 0010 = 12340 + 0011 = 12351
        verify_address(2'b00, 3'b000, 16'h0010, 20'h12351, "CS:BX + 0x0010");
        
        // Test 2: ES:DI + 0x0015 = 9ABC:0003 + 0015 = 9ABC0 + 0018 = 9ABD8
        verify_address(2'b10, 3'b010, 16'h0015, 20'h9ABD8, "ES:DI + 0x0015");
        
        // Prueba de interrupción
        $display("\n[%0t] Probando interrupción...", $time);
        INTR = 1;
        #TEST_DELAY;
        $display("  INTR=%b, INTA=%b (esperado 1)", INTR, INTA);
        INTR = 0;
        #TEST_DELAY;
        
        // Prueba de HOLD/HLDA
        $display("\n[%0t] Probando HOLD/HLDA...", $time);
        HOLD = 1;
        #TEST_DELAY;
        $display("  HOLD=%b, HLDA=%b (esperado 1)", HOLD, HLDA);
        HOLD = 0;
        #TEST_DELAY;
        $display("  HOLD=%b, HLDA=%b (esperado 0)", HOLD, HLDA);
        
        // Prueba de cola de instrucciones
        $display("\n[%0t] Llenando cola de instrucciones...", $time);
        QUEUE_ENA = 1;
        QUEUE_IN = 8'hAA; #TEST_DELAY;
        QUEUE_IN = 8'hBB; #TEST_DELAY;
        QUEUE_IN = 8'hCC; #TEST_DELAY;
        QUEUE_IN = 8'hDD; #TEST_DELAY;
        QUEUE_ENA = 0;
        #TEST_DELAY;
        $display("  Cola: %h (esperado aabbccdd)", QUEUE_OUT);
        
        // Finalización
        #(CLK_PERIOD*2);
        $display("\n========== TESTBENCH FINALIZADO ==========");
        $finish;
    end
    
endmodule