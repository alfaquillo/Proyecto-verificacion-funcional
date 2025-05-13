`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 14:42:39
// Design Name: 
// Module Name: registroip_tb
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



module registroip_tb;

    // Señales de entrada
    reg CLK;
    reg RST;
    reg ENA;
    reg SEL;
    reg [15:0] D;
    
    // Señales de salida
    wire [15:0] Q;
    
    // Instancia del módulo bajo prueba (DUT)
    RegistroIP dut (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA),
        .SEL(SEL),
        .D(D),
        .Q(Q)
    );
    
    // Generación de reloj
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // Reloj de 10ns de período
    end
    
    // Procedimiento de prueba
    initial begin
        // Inicialización
        RST = 1;
        ENA = 0;
        SEL = 0;
        D = 16'h0000;
        
        // Reset inicial
        #20;
        RST = 0;
        
        // Test 1: Verificar funcionamiento del reset
        #10;
        if (Q !== 16'h0000) $error("Error en reset: Q = %h, esperado 0000", Q);
        else $display("Test 1: Reset funcionando correctamente");
        
        // Test 2: Incremento con SEL=0 y ENA=1
        ENA = 1;
        SEL = 0;
        #10; // Esperar un ciclo de reloj
        
        if (Q !== 16'h0001) $error("Error en incremento: Q = %h, esperado 0001", Q);
        else $display("Test 2: Incremento funcionando correctamente");
        
        // Test 3: Mantener valor con ENA=0
        ENA = 0;
        #10;
        
        if (Q !== 16'h0001) $error("Error en retención: Q = %h, esperado 0001", Q);
        else $display("Test 3: Retención con ENA=0 funcionando correctamente");
        
        // Test 4: Carga de dato con SEL=1
        ENA = 1;
        SEL = 1;
        D = 16'hABCD;
        #10;
        
        if (Q !== 16'hABCD) $error("Error en carga: Q = %h, esperado ABCD", Q);
        else $display("Test 4: Carga de dato funcionando correctamente");
        
        // Test 5: Verificar incremento después de carga
        SEL = 0;
        #10;
        
        if (Q !== 16'hABCE) $error("Error en incremento post-carga: Q = %h, esperado ABCE", Q);
        else $display("Test 5: Incremento post-carga funcionando correctamente");
        
        // Test 6: Reset asíncrono
        #5; // Medio ciclo de reloj
        RST = 1;
        #1; // Verificar que el reset es asíncrono
        
        if (Q !== 16'h0000) $error("Error en reset asíncrono: Q = %h, esperado 0000", Q);
        else $display("Test 6: Reset asíncrono funcionando correctamente");
        
        #4; // Completar el ciclo de reloj
        RST = 0;
        
        // Test 7: Incremento múltiple
        SEL = 0;
        ENA = 1;
        #10; if (Q !== 16'h0001) $error("Error en incremento 1");
        #10; if (Q !== 16'h0002) $error("Error en incremento 2");
        #10; if (Q !== 16'h0003) $error("Error en incremento 3");
        else $display("Test 7: Incremento múltiple funcionando correctamente");
        
        // caso FFFF
        D = 16'hFFFF;
        SEL = 1;
        #10;
        SEL = 0;
        #10;
        if (Q !== 16'h0000) $error("Error en overflow");
        
        // Finalizar simulación
        #10;
        $display("Todos los tests completados");
        $finish;
    end
    
    // Monitor para observar las señales
    initial begin
        $monitor("Tiempo: %t | CLK=%b RST=%b ENA=%b SEL=%b D=%h Q=%h", 
                 $time, CLK, RST, ENA, SEL, D, Q);
    end

endmodule
