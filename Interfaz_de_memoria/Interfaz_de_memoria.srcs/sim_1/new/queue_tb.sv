`timescale 1ns / 1ps

module queue_tb;

    // Señales de entrada
    reg CLK;
    reg RST;
    reg ENA;
    reg [7:0] DATAIN;
    
    // Señales de salida
    wire [31:0] DATAOUT;
    
    // Instancia del módulo bajo prueba (DUT)
    queue dut (
        .CLK(CLK),
        .RST(RST),
        .ENA(ENA),
        .DATAIN(DATAIN),
        .DATAOUT(DATAOUT)
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
        DATAIN = 8'h00;
        
        // 1. Test de reset
        #20;
        RST = 0;
        ENA = 1;
        
        // Verificar estado después del reset
        if (DATAOUT !== 32'h80808080) 
            $error("Error en reset: DATAOUT = %h, esperado 80808080", DATAOUT);
        else 
            $display("Test 1: Reset funcionando correctamente");
        
        // 2. Test de carga secuencial
        // Ciclo 1
        DATAIN = 8'h0A;
        #10;
        if (DATAOUT !== 32'h8080800A) 
            $error("Error ciclo 1: DATAOUT = %h, esperado 8080800A", DATAOUT);
        
        // Ciclo 2
        DATAIN = 8'hF0;
        #10;
        if (DATAOUT !== 32'h80800AF0) 
            $error("Error ciclo 2: DATAOUT = %h, esperado 80800AF0", DATAOUT);
        
        // Ciclo 3
        DATAIN = 8'hD7;
        #10;
        if (DATAOUT !== 32'h800AF0D7) 
            $error("Error ciclo 3: DATAOUT = %h, esperado 800AF0D7", DATAOUT);
        
        // Ciclo 4
        DATAIN = 8'h51;
        #10;
        if (DATAOUT !== 32'h0AF0D751) 
            $error("Error ciclo 4: DATAOUT = %h, esperado 0AF0D751", DATAOUT);
        else
            $display("Test 2: Carga secuencial funcionando correctamente");
        
        // 3. Test de retención con ENA=0
        ENA = 0;
        DATAIN = 8'hFF; // Este valor no debería cargarse
        #10;
        if (DATAOUT !== 32'h0AF0D751) 
            $error("Error retención: DATAOUT = %h, esperado 0AF0D751", DATAOUT);
        else
            $display("Test 3: Retención con ENA=0 funcionando correctamente");
        
        // 4. Test de reset asíncrono
        #5; // Medio ciclo
        RST = 1;
        #1; // Verificar que es asíncrono
        if (DATAOUT !== 32'h80808080) 
            $error("Error reset asíncrono: DATAOUT = %h, esperado 80808080", DATAOUT);
        else
            $display("Test 4: Reset asíncrono funcionando correctamente");
        
        #4; // Completar el ciclo
        RST = 0;
        ENA = 1;
        
        // 5. Test de llenado completo y overflow
        DATAIN = 8'h11;
        #10;
        DATAIN = 8'h22;
        #10;
        DATAIN = 8'h33;
        #10;
        DATAIN = 8'h44;
        #10;
        if (DATAOUT !== 32'h11223344) 
            $error("Error llenado completo: DATAOUT = %h, esperado 11223344", DATAOUT);
        else
            $display("Test 5: Llenado completo funcionando correctamente");
                // 6. Test de valores alternos
        ENA = 1;
        DATAIN = 8'hAA;
        #10;
        DATAIN = 8'h55;
        #10;
        DATAIN = 8'hAA;
        #10;
        DATAIN = 8'h55;
        #10;
        if (DATAOUT !== 32'hAA55AA55) 
            $error("Error valores alternos: DATAOUT = %h, esperado AA55AA55", DATAOUT);
        else
            $display("Test 6: Valores alternos funcionando correctamente");
        
        // 7. Test de overflow con valores máximos
        DATAIN = 8'hFF;
        #10;
        DATAIN = 8'hFF;
        #10;
        DATAIN = 8'hFF;
        #10;
        DATAIN = 8'hFF;
        #10;
        if (DATAOUT !== 32'hFFFFFFFF) 
            $error("Error valores máximos: DATAOUT = %h, esperado FFFFFFFF", DATAOUT);
        else
            $display("Test 7: Valores máximos funcionando correctamente");
    
        // Finalizar simulación
        #10;
        $display("Todos los tests completados");
        $finish;
    end
    
    // Monitor para observar las señales
    initial begin
        $monitor("Tiempo: %t | CLK=%b RST=%b ENA=%b DATAIN=%h DATAOUT=%h", 
                 $time, CLK, RST, ENA, DATAIN, DATAOUT);
    end

endmodule