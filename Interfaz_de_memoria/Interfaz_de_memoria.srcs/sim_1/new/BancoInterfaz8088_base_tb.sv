`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 09:09:01 PM
// Design Name: 
// Module Name: BancoInterfaz8088_base_tb
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

module BancoInterfaz8088_tb_base;

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
    
    // Generación de reloj
    always #(CLK_PERIOD/2) CLK = ~CLK;
    
    // Tarea para verificar direcciones
    task verify_address(
        input OP_mode,
        input [1:0] seg_sel,
        input [2:0] m1_sel,
        input [2:0] m2_sel,
        input [15:0] desp,
        input [19:0] expected,
        input string test_name
    );
        reg [15:0] calc_segment;
        reg [15:0] calc_offset;
    begin
        OP = OP_mode;
        SEG_SEL = seg_sel;
        M1_SEL = m1_sel;
        M2_SEL = m2_sel;
        DESP = desp;
        #TEST_DELAY;
        
        $display("\n[%0t] Test: %s", $time, test_name);
        $display("  Config: OP=%b, SEG=%b, M1=%b, M2=%b, DESP=%h", 
                OP_mode, seg_sel, m1_sel, m2_sel, desp);
        
        // Debug del generador de direcciones
        $display("  Debug GenDir:");
        $display("    reg1=%h (MUX1 out)", dut.generador_direcciones.reg1);
        $display("    offset=%h (reg1 + DESP)", dut.generador_direcciones.offset);
        $display("    effective_offset=%h (%s)",
                dut.generador_direcciones.effective_offset,
                OP_mode ? "offset" : "IP");
        $display("    segment=%h (%s), segment_base=%h",
                dut.generador_direcciones.segment,
                OP_mode ? "data_segment" : "CS",
                {dut.generador_direcciones.segment, 4'b0});
        
        $display("  Esperado: %h  Obtenido: %h", expected, A);
        
        if (A !== expected) begin
            $error("  ERROR: Dirección incorrecta");
            // Cálculo manual
            
            // Selección de segmento
            if (OP_mode) begin
                case (seg_sel)
                    2'b00: calc_segment = dut.CS;
                    2'b01: calc_segment = dut.DS;
                    2'b10: calc_segment = dut.ES;
                    2'b11: calc_segment = dut.SS;
                endcase
            end else begin
                calc_segment = dut.CS;
            end
            
            // Cálculo de offset (solo reg1 + DESP)
            case (m1_sel)
                3'b000: calc_offset = BX + desp;
                3'b001: calc_offset = SI + desp;
                3'b010: calc_offset = DI + desp;
                3'b011: calc_offset = BP + desp;
                3'b100: calc_offset = SP + desp;
                default: calc_offset = desp;
            endcase
            
            if (!OP_mode) begin
                calc_offset = 16'h0000; // IP para modo instrucción
            end
            
            $display("  Cálculo manual:");
            $display("    Segmento: %h << 4 = %h", calc_segment, {calc_segment, 4'b0});
            $display("    Offset: %h", calc_offset);
            $display("    Total: %h + %h = %h", 
                    {calc_segment, 4'b0}, calc_offset, 
                    {calc_segment, 4'b0} + calc_offset);
        end else begin
            $display("  OK");
        end
    end
    endtask
    
    // Tarea para reset
    task reset;
    begin
        $display("\n[%0t] Applying reset...", $time);
        RST = 1;
        #(CLK_PERIOD*3);
        RST = 0;
        #(CLK_PERIOD);
        $display("[%0t] Reset complete", $time);
        
        $display("  Registros post-reset:");
        $display("  CS=%h, DS=%h, ES=%h, SS=%h", dut.CS, dut.DS, dut.ES, dut.SS);
    end
    endtask
        
    reg [7:0] ad_driver;
    reg ad_oe;
    assign AD = ad_oe ? ad_driver : 8'bz;
    
    
    
    // Tarea para probar el bus de datos

            task test_data_bus(
            input [7:0] data_in,
            input [7:0] expected_out,
            input string test_name
        );
        begin
            $display("\n[%0t] Test Bus Datos: %s", $time, test_name);
            
            // Fase de escritura (externo -> interno)
            DTR = 1;  // Modo escritura
            DEN = 0;  // Habilitar bus
            WR = 0;   // Activar escritura (activo bajo)
            ad_oe = 1; // Habilitar driver
            ad_driver = data_in;
            #20;
            WR = 1;
            ad_oe = 0; // Deshabilitar driver
            #10;
            
            // Verificar dato interno
            $display("  Dato enviado: %h, Dato interno: %h", data_in, dut.internal_data_bus);
            if (dut.internal_data_bus !== expected_out) begin
                $error("  ERROR: Dato interno incorrecto");
            end else begin
                $display("  Escritura OK");
            end
            
            // Fase de lectura (interno -> externo)
            DTR = 0;  // Modo lectura
            DEN = 0;
            RD = 0;   // Activar lectura (activo bajo)
            #20;
            
            // Verificar dato en el bus
            $display("  Dato leído en bus: %h", AD);
            if (AD !== expected_out) begin
                $error("  ERROR: Dato en bus incorrecto");
            end else begin
                $display("  Lectura OK");
            end
            
            // Limpiar señales
            RD = 1;
            DEN = 1;
            #20;
        end
        endtask

    // Inicialización
    initial begin
        $timeformat(-9, 3, "ns", 6);
        $display("\n========== TESTBENCH INICIADO ==========");
        
        // Inicialización de señales
        {IOM, DTR, DEN, ALE, RD, WR} = '0;
        {HOLD, INTR, NMI} = '0;
        {ENA_CS, ENA_DS, ENA_ES, ENA_SS} = '0;
        QUEUE_ENA = 0;
        OP = 0;
        M1_SEL = 0;
        M2_SEL = 0;
        SEG_SEL = 0;
        DESP = 0;
        
        // 1. Reset inicial
        reset();
        
        // 2. Cargar registros de segmento
        $display("\n[%0t] Cargando registros de segmento...", $time);
        ENA_CS = 1; D_CS = 16'h1234;
        ENA_DS = 1; D_DS = 16'h5678;
        ENA_ES = 1; D_ES = 16'h9ABC;
        ENA_SS = 1; D_SS = 16'hDEF0;
        #TEST_DELAY;
        {ENA_CS, ENA_DS, ENA_ES, ENA_SS} = '0;
        $display("  Registros cargados:");
        $display("  CS=%h, DS=%h, ES=%h, SS=%h", dut.CS, dut.DS, dut.ES, dut.SS);
        
        // 3. Inicializar registros
        BX = 16'h0001; 
        SI = 16'h0002; 
        DI = 16'h0003; 
        BP = 16'h0004; 
        SP = 16'h0005;
        $display("\n[%0t] Registros inicializados:", $time);
        $display("  BX=%h, SI=%h, DI=%h, BP=%h, SP=%h", BX, SI, DI, BP, SP);
        
        // 4. Pruebas de generación de direcciones
        $display("\n[%0t] ===== PRUEBAS GENERACIÓN DIRECCIONES =====", $time);
        
        // Test 1: CS:BX + 0x0010 = 12340 + 0001 + 0010 = 12351
        verify_address(1'b1, 2'b00, 3'b000, 3'b000, 16'h0010, 
                      20'h12351, "CS:BX + 0x0010 (modo datos)");
        
        // Test 2: ES:DI + 0x0015 = 9ABC0 + 0003 + 0015 = 9ABD8
        verify_address(1'b1, 2'b10, 3'b010, 3'b000, 16'h0015, 
                      20'h9ABD8, "ES:DI + 0x0015 (modo datos)");
        
        // Test 3: DS:SI + 0x0100 = 56780 + 0002 + 0100 = 56882
        verify_address(1'b1, 2'b01, 3'b001, 3'b000, 16'h0100, 
                      20'h56882, "DS:SI + 0x0100 (modo datos)");
        
        // Test 4: SS:BP + 0x0020 = DEF00 + 0004 + 0020 = DEF24
        verify_address(1'b1, 2'b11, 3'b011, 3'b000, 16'h0020, 
                      20'hDEF24, "SS:BP + 0x0020 (modo datos)");
        
        // Test 5: CS:IP = 12340 + 0000 = 12340
        verify_address(1'b0, 2'b00, 3'b000, 3'b000, 16'h0000, 
                      20'h12340, "CS:IP (modo instrucción)");
        
        // 5. Prueba de bus de datos
        $display("\n[%0t] ===== PRUEBAS BUS DE DATOS =====", $time);
        test_data_bus(8'hAA, 8'hAA, "Escritura/Lectura básica");
        test_data_bus(8'h55, 8'h55, "Escritura/Lectura patrón alternado");
        
        // 6. Prueba de interrupción
        $display("\n[%0t] ===== PRUEBA INTERRUPCIÓN =====", $time);
        INTR = 1;
        #20;
        $display("  INTR=%b, INTA=%b (esperado 1)", INTR, INTA);
        INTR = 0;
        #20;
        
        // 7. Prueba de HOLD/HLDA
        $display("\n[%0t] ===== PRUEBA HOLD/HLDA =====", $time);
        HOLD = 1;
        #20;
        $display("  HOLD=%b, HLDA=%b (esperado 1)", HOLD, HLDA);
        HOLD = 0;
        #20;
        $display("  HOLD=%b, HLDA=%b (esperado 0)", HOLD, HLDA);
        
        // 8. Prueba de cola de instrucciones
        $display("\n[%0t] ===== PRUEBA COLA INSTRUCCIONES =====", $time);

        // Enviar datos con pulsos cortos de ENA
        QUEUE_ENA = 1;
        QUEUE_IN = 8'hAA; 
        #10;
        QUEUE_ENA = 0;
        #10;
        
        QUEUE_ENA = 1;
        QUEUE_IN = 8'hBB;
        #10;
        QUEUE_ENA = 0;
        #10;
        
        QUEUE_ENA = 1;
        QUEUE_IN = 8'hCC;
        #10;
        QUEUE_ENA = 0;
        #10;
        
        QUEUE_ENA = 1;
        QUEUE_IN = 8'hDD;
        #10;
        QUEUE_ENA = 0;
        
        #40; // Esperar propagación completa
        
       
        if (QUEUE_OUT !== 32'hAABBCCDD) begin
            $error("  ERROR: Cola incorrecta. Obtenido: %h (Esperado: AABBCCDD)", QUEUE_OUT);
            $display("  Debug Cola:");
            $display("    R4=%h (más viejo), R3=%h, R2=%h, R1=%h (más nuevo)",
                    dut.cola_instrucciones.dout1,
                    dut.cola_instrucciones.dout2,
                    dut.cola_instrucciones.dout3,
                    dut.cola_instrucciones.dout4);
        end else begin
            $display("  Cola OK: %h (AABBCCDD)", QUEUE_OUT);
        end
        
        // Finalización
        #(CLK_PERIOD*2);
        $display("\n========== TESTBENCH FINALIZADO ==========");
        $finish;
    end
    
    // Simulación del bus de datos
  //  reg [7:0] ad_driver;
  //  assign AD = (DTR && !DEN && !WR) ? ad_driver : 8'bz;
    
endmodule
