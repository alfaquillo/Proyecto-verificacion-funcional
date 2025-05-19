module GenDir_tb;

    // Señales de entrada
    reg OP;
    reg [1:0] SEG_SEL;
    reg [2:0] M1_SEL;
    reg [2:0] M2_SEL;
    reg [15:0] BX, SI, DI, BP, SP;
    reg [15:0] CS, ES, SS, DS;
    reg [15:0] IP;
    reg [15:0] DESP;
    
    // Señales de salida
    wire [19:0] DIR;
    
    // Instancia del módulo bajo prueba (DUT)
    GenDir dut (
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
        .IP(IP),
        .DESP(DESP),
        .DIR(DIR)
    );
    
    // Procedimiento de prueba
    initial begin
        // Inicialización de registros
        BX = 16'h1111;
        SI = 16'h2222;
        DI = 16'h3333;
        BP = 16'h4444;
        SP = 16'h5555;
        CS = 16'h1000;
        ES = 16'h2000;
        SS = 16'h3000;
        DS = 16'h4000;
        IP = 16'h0100;
        DESP = 16'h0010;
        
        // Monitor para observar las señales
        $monitor("Tiempo: %t | OP=%b SEG_SEL=%b M1_SEL=%b M2_SEL=%b DIR=%h", 
                 $time, OP, SEG_SEL, M1_SEL, M2_SEL, DIR);
        
        // Test 1: Direccionamiento de instrucción (OP=0)
        OP = 0;
        SEG_SEL = 2'b00;
        M1_SEL = 3'b000;
        M2_SEL = 3'b000;
        #10;
        if (DIR !== 20'h10100) $error("Error Test 1: DIR = %h, esperado 10100", DIR);
        else $display("Test 1: Direccionamiento de instrucción correcto");
        
        // Test 2: Direccionamiento de datos con BX+SI+DESP y segmento DS
        OP = 1;
        SEG_SEL = 2'b10; // DS
        M1_SEL = 3'b000; // BX
        M2_SEL = 3'b001; // SI
        #10;
        // Corrección: 1111(BX) + 2222(SI) + 0010(DESP) = 3343 (no 3342)
        if (DIR !== 20'h43343) $error("Error Test 2: DIR = %h, esperado 43343", DIR);
        else $display("Test 2: Direccionamiento BX+SI+DESP con DS correcto");
        
        // Test 3: Direccionamiento con BP+DI y segmento SS
        SEG_SEL = 2'b11; // SS
        M1_SEL = 3'b011; // BP
        M2_SEL = 3'b010; // DI
        DESP = 16'h0000; // Sin desplazamiento
        #10;
        if (DIR !== 20'h37777) $error("Error Test 3: DIR = %h, esperado 37777", DIR);
        else $display("Test 3: Direccionamiento BP+DI con SS correcto");
        
        // Test 4: Direccionamiento con SP solo
        SEG_SEL = 2'b11; // SS
        M1_SEL = 3'b100; // SP
        M2_SEL = 3'b101; // 0
        #10;
        if (DIR !== 20'h35555) $error("Error Test 4: DIR = %h, esperado 35555", DIR);
        else $display("Test 4: Direccionamiento SP solo correcto");
        
        // Test 5: Direccionamiento con segmento ES
        SEG_SEL = 2'b01; // ES
        M1_SEL = 3'b000; // BX
        M2_SEL = 3'b000; // BX (BX*2)
        DESP = 16'h1000; // Desplazamiento grande
        #10;
        if (DIR !== 20'h23222) $error("Error Test 5: DIR = %h, esperado 23222", DIR);
        else $display("Test 5: Direccionamiento BX*2+DESP con ES correcto");
        
        // Test 6: Overflow de dirección (suma que supera 20 bits)
        CS = 16'hFFFF;
        IP = 16'hFFFF;
        OP = 0;
        #10;
        if (DIR !== 20'h0FFEF) $error("Error Test 6: DIR = %h, esperado 0FFEF", DIR);
        else $display("Test 6: Manejo de overflow correcto");
        
        // Test 7: Combinación compleja BP+SI+DESP con segmento DS
        CS = 16'h1000; // Restaurar CS
        OP = 1;
        SEG_SEL = 2'b10; // DS
        M1_SEL = 3'b011; // BP
        M2_SEL = 3'b001; // SI
        DESP = 16'hFF00; // Desplazamiento negativo (-256)
        #10;
        // Corrección: 4444(BP) + 2222(SI) + FF00(-256) = 6666 - 100 = 6566 (no 6666)
        if (DIR !== 20'h46566) $error("Error Test 7: DIR = %h, esperado 46566", DIR);
        else $display("Test 7: Direccionamiento BP+SI+DESP(neg) con DS correcto");
        
        // Finalizar simulación
        #10;
        $display("Todos los tests completados");
        $finish;
    end

endmodule