//-----------------------------------------
// Tareas de inicialización
//-----------------------------------------

task init_signals();
    {IOM, DTR, DEN, ALE, RD, WR} = '0;
    {HOLD, INTR, NMI} = '0;
    {ENA_CS, ENA_DS, ENA_ES, ENA_SS} = '0;
    QUEUE_ENA = 0;
    OP = 0;
    M1_SEL = 0;
    M2_SEL = 0;
    SEG_SEL = 0;
    DESP = 0;
    ad_oe = 0;
endtask

task reset();
    $display("\n[%0t] Aplicando reset...", $time);
    RST = 1;
    #(CLK_PERIOD*3);
    RST = 0;
    #(CLK_PERIOD);
    $display("[%0t] Reset completado", $time);
endtask

//-----------------------------------------
// Tareas de configuración de registros
//-----------------------------------------

task load_segment_registers();
    $display("\n[%0t] Cargando registros de segmento...", $time);
    ENA_CS = 1; D_CS = 16'h1234;
    ENA_DS = 1; D_DS = 16'h5678;
    ENA_ES = 1; D_ES = 16'h9ABC;
    ENA_SS = 1; D_SS = 16'hDEF0;
    #TEST_DELAY;
    {ENA_CS, ENA_DS, ENA_ES, ENA_SS} = '0;
    $display("[%0t] Registros cargados: CS=%h, DS=%h, ES=%h, SS=%h", 
            $time, dut.CS, dut.DS, dut.ES, dut.SS);
endtask

task init_general_registers();
    $display("\n[%0t] Inicializando registros generales...", $time);
    BX = 16'h0001; 
    SI = 16'h0002; 
    DI = 16'h0003; 
    BP = 16'h0004; 
    SP = 16'h0005;
    $display("[%0t] Registros: BX=%h, SI=%h, DI=%h, BP=%h, SP=%h", 
            $time, BX, SI, DI, BP, SP);
endtask

//-----------------------------------------
// Tareas de verificación de direcciones
//-----------------------------------------

task verify_address(
    input bit OP_mode,
    input [1:0] seg_sel,
    input [2:0] m1_sel,
    input [2:0] m2_sel,
    input [15:0] desp,
    input [19:0] expected,
    input string test_name
);
    OP = OP_mode;
    SEG_SEL = seg_sel;
    M1_SEL = m1_sel;
    M2_SEL = m2_sel;
    DESP = desp;
    #TEST_DELAY;
    
    $display("[%0t] Test: %s", $time, test_name);
    $display("  Config: OP=%b, SEG=%b, M1=%b, M2=%b, DESP=%h", 
            OP_mode, seg_sel, m1_sel, m2_sel, desp);
    $display("  Esperado: %h, Obtenido: %h", expected, A);
    
    sb.check_address(expected, A, test_name);
endtask

task run_address_generation_tests();
    $display("\n--- PRUEBAS DE GENERACION DE DIRECCIONES (10 pruebas) ---");
    
    // Test 1: CS:BX + 0x0010
    verify_address(1'b1, 2'b00, 3'b000, 3'b000, 16'h0010, 
                  20'h12351, "Modo datos: CS:BX + 0x0010");
    
    // Test 2: ES:DI + 0x0015
    verify_address(1'b1, 2'b10, 3'b010, 3'b000, 16'h0015, 
                  20'h9ABD8, "Modo datos: ES:DI + 0x0015");
    
    // Test 3: DS:SI + 0x0100
    verify_address(1'b1, 2'b01, 3'b001, 3'b000, 16'h0100, 
                  20'h56882, "Modo datos: DS:SI + 0x0100");
    
    // Test 4: SS:BP + 0x0020
    verify_address(1'b1, 2'b11, 3'b011, 3'b000, 16'h0020, 
                  20'hDEF24, "Modo datos: SS:BP + 0x0020");
    
    // Test 5: CS:IP (Instruction Mode)
    verify_address(1'b0, 2'b00, 3'b000, 3'b000, 16'h0000, 
                  20'h12340, "Modo instruccion: CS:IP");
    
    // Test 6: DS:BX + SI + 0x0100
    verify_address(1'b1, 2'b01, 3'b000, 3'b001, 16'h0100, 
                  20'h56883, "Modo datos: DS:BX+SI + 0x0100");
    
    // Test 7: SS:BP + DI + 0x0020
    verify_address(1'b1, 2'b11, 3'b011, 3'b010, 16'h0020, 
                  20'hDEF27, "Modo datos: SS:BP+DI + 0x0020");
    
    // Test 8: ES:DI + SP + 0x0050
    verify_address(1'b1, 2'b10, 3'b010, 3'b100, 16'h0050, 
                  20'h9AC18, "Modo datos: ES:DI+SP + 0x0050");
    
    // Test 9: CS:BX + BP + 0x0000
    verify_address(1'b1, 2'b00, 3'b000, 3'b011, 16'h0000, 
                  20'h12345, "Modo datos: CS:BX+BP");
    
    // Test 10: DS:SI + DI + 0x0300
    verify_address(1'b1, 2'b01, 3'b001, 3'b010, 16'h0300, 
                  20'h56B85, "Modo datos: DS:SI+DI + 0x0300");
endtask

//-----------------------------------------
// Tareas de prueba del bus de datos
//-----------------------------------------

task test_data_bus(
    input [7:0] data_in,
    input [7:0] expected_out,
    input string test_name
);
    $display("\n[%0t] Test Bus Datos: %s", $time, test_name);
    
    // Fase de escritura
    DTR = 1; DEN = 0; WR = 0;
    ad_oe = 1; ad_driver = data_in;
    #20;
    WR = 1; ad_oe = 0;
    #10;
    
    // Verificar dato interno
    sb.check_data(data_in, dut.internal_data_bus, test_name);
    
    // Fase de lectura
    DTR = 0; DEN = 0; RD = 0;
    #20;
    
    // Verificar dato en bus
    sb.check_data(expected_out, AD, test_name);
    
    // Limpiar señales
    RD = 1; DEN = 1;
    #20;
endtask

task run_data_bus_tests();
    $display("\n--- PRUEBAS DE BUS DE DATOS (5 pruebas) ---");
    test_data_bus(8'hAA, 8'hAA, "Escritura/Lectura AA");
    test_data_bus(8'h55, 8'h55, "Escritura/Lectura 55");
    test_data_bus(8'hFF, 8'hFF, "Escritura/Lectura FF");
    test_data_bus(8'h00, 8'h00, "Escritura/Lectura 00");
    test_data_bus(8'hC3, 8'hC3, "Escritura/Lectura C3");
endtask

//-----------------------------------------
// Tareas de prueba de control
//-----------------------------------------

task run_control_tests();
    $display("\n--- PRUEBAS DE SEÑALES DE CONTROL (5 pruebas) ---");
    
    // Test 1: Interrupción
    $display("[%0t] Test Interrupcion", $time);
    INTR = 1; #20;
    sb.check_control_signal(1'b1, INTA, "INTA", "Interrupcion activa");
    INTR = 0; #20;
    sb.check_control_signal(1'b0, INTA, "INTA", "Interrupcion inactiva");
    
    // Test 2: HOLD/HLDA
    $display("[%0t] Test HOLD/HLDA", $time);
    HOLD = 1; #20;
    sb.check_control_signal(1'b1, HLDA, "HLDA", "HOLD activo");
    HOLD = 0; #20;
    sb.check_control_signal(1'b0, HLDA, "HLDA", "HOLD inactivo");
    
    // Test 3: NMI
    $display("[%0t] Test NMI", $time);
    NMI = 1; #20;
    sb.check_control_signal(1'b1, NMI, "NMI", "NMI activo");
    NMI = 0; #20;
    sb.check_control_signal(1'b0, NMI, "NMI", "NMI inactivo");
    
    // Test 4: Cola de instrucciones
    $display("[%0t] Test Cola Instrucciones", $time);
    test_instruction_queue();
    
    // Test 5: Control de bus
    $display("[%0t] Test Control Bus", $time);
    test_bus_control();
endtask

task test_instruction_queue();
    // Limpiar cola
    QUEUE_ENA = 0; QUEUE_IN = 8'h00; #100;
    
    // Enviar 4 bytes
    send_queue_byte(8'h11);
    send_queue_byte(8'h22);
    send_queue_byte(8'h33);
    send_queue_byte(8'h44);
    
    #40; // Esperar propagación
    
    // Verificar cola
    sb.check_queue(32'h11223344, QUEUE_OUT, "Prueba cola instrucciones");
endtask

task send_queue_byte(input [7:0] data);
    QUEUE_ENA = 1; QUEUE_IN = data; #10;
    QUEUE_ENA = 0; #10;
endtask

task test_bus_control();
    // Prueba señales de control del bus
    IOM = 1; DTR = 1; DEN = 0; #20;
    sb.check_control_signal(1'b1, IOM, "IOM", "Modo I/O");
    sb.check_control_signal(1'b1, DTR, "DTR", "Transmisión");
    sb.check_control_signal(1'b0, DEN, "DEN", "Habilitado");
    
    IOM = 0; DTR = 0; DEN = 1; #20;
    sb.check_control_signal(1'b0, IOM, "IOM", "Modo Memoria");
    sb.check_control_signal(1'b0, DTR, "DTR", "Recepción");
    sb.check_control_signal(1'b1, DEN, "DEN", "Deshabilitado");
endtask