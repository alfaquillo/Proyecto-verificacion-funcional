`timescale 1ns / 1ps

module bancoderegistros_tb;
    // Parámetros y señales
    parameter CLK_PERIOD = 10;
    parameter NUM_TESTS = 100;
    logic clk, rst;
    logic rd, wr;
    logic [3:0] sel;
    wire [15:0] data;
    logic [15:0] data_driver;
    assign data = (rd && !wr) ? 16'bz : data_driver;
    
    // Contadores y flags
    int pruebas_totales = 0;
    int pruebas_correctas = 0;
    int pruebas_incorrectas = 0;
    int errores_coverage = 0;
    bit coverage_enabled = 0;
    integer seed = 42;
    
    // Instancia del DUT
    bancoderegistros dut (
        .CLK(clk),
        .RST(rst),
        .RD(rd),
        .WR(wr),
        .SEL(sel),
        .DATA(data)
    );
    
    // Instancias de los módulos
    bancoderegistros_scoreboard sb();
    bancoderegistros_coverage cov(.clk(clk), .sel(sel), .wr(wr), .rd(rd));
    
    // Generación de reloj
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end
    
    // Reset controlado
    initial begin
        rst = 1;
        #(CLK_PERIOD*2);
        rst = 0;
        coverage_enabled = 1;
    end
    
    // Función para valor aleatorio (16 bits)
    function [15:0] get_random_value();
        return $dist_uniform(seed, 0, 65535);
    endfunction
    
    // Función para selección aleatoria de registro
    function [3:0] get_random_register();
        return $dist_uniform(seed, 0, 15);
    endfunction
    
    // Función para operación aleatoria (75% escritura)
    function bit get_random_operation();
        return ($dist_uniform(seed, 0, 3) > 0);
    endfunction
    
    // Tarea para aplicar transacción
    task automatic apply_transaction(input bit is_write, input [3:0] addr, input [15:0] val = 0);
        pruebas_totales++;
        wr = is_write;
        rd = ~is_write;
        sel = addr;
        data_driver = (is_write) ? val : 16'bz;
        
        @(posedge clk);
        #1; // Pequeño delay para evitar races
        
        if(wr) begin
            sb.update_model(addr, val);
            $display("[WRITE] SEL=%h, DATA=%h", addr, val);
            pruebas_correctas++;
        end
        else begin
            #(CLK_PERIOD/2);
            if (sb.get_expected(addr) === data) begin
                pruebas_correctas++;
            end else begin
                pruebas_incorrectas++;
            end
            sb.check_scoreboard($sformatf("REG[%h]", addr), sb.get_expected(addr), data);
            rd = 0;
            #(CLK_PERIOD/2);
        end
    endtask
    
    // Tarea para probar registros combinados
    task automatic test_register_pair(input [3:0] reg_combined, 
                                   input [3:0] reg_high, 
                                   input [3:0] reg_low,
                                   input string reg_name);
        logic [15:0] random_val = get_random_value();
        logic [15:0] expected_high, expected_low, expected_combined;
        
        // 1. Escribir valor en registro combinado
        apply_transaction(1, reg_combined, random_val);
        
        // 2. Leer partes individuales
        #(CLK_PERIOD);
        apply_transaction(0, reg_high);
        apply_transaction(0, reg_low);
        
        // 3. Obtener valores esperados
        expected_high = sb.get_expected(reg_high);
        expected_low = sb.get_expected(reg_low);
        expected_combined = sb.get_expected(reg_combined);
        
        // 4. Verificar combinación
        if ({expected_high[15:8], expected_low[7:0]} !== expected_combined) begin
            $error("[%s] Mismatch: Combined=%h, High+Low=%h%h", 
                  reg_name, expected_combined, 
                  expected_high[15:8], expected_low[7:0]);
            errores_coverage++;
        end
        else begin
            $display("[%s] Combinación correcta: %h = %h%h", 
                   reg_name, expected_combined, 
                   expected_high[15:8], expected_low[7:0]);
        end
    endtask
    
    // Secuencia de pruebas aleatorias
    task test_random_operations();
        $display("\n=== TEST 2: Operaciones Aleatorias (%0d pruebas) ===", NUM_TESTS);
        
        for (int i = 0; i < NUM_TESTS; i++) begin
            $display("\n=== Prueba %0d ===", i);
            
            // Operación aleatoria
            if(get_random_operation()) begin
                apply_transaction(1, get_random_register(), get_random_value());
            end
            else begin
                apply_transaction(0, get_random_register());
            end
            
            // Probar registros combinados cada 10 pruebas (modified condition)
            if((i % 10 == 9) && (i < NUM_TESTS-1)) begin
                test_register_pair(8, 0, 4, "AX");
                test_register_pair(9, 1, 5, "BX");
                test_register_pair(10, 2, 6, "CX");
                test_register_pair(11, 3, 7, "DX");
            end
        end
    endtask
    
    // Función para reporte final
    function void print_final_report();
        real cov_percentage = cov.get_coverage();
        
        $display("\n=== RESUMEN FINAL DETALLADO ===");
        $display("Pruebas totales:     %0d", pruebas_totales);
        $display("Pruebas correctas:   %0d", pruebas_correctas);
        $display("Pruebas incorrectas: %0d", pruebas_incorrectas);
        $display("Errores de cobertura: %0d", errores_coverage);
        $display("Coverage:           %.2f%%", cov_percentage);
        
        if (pruebas_incorrectas == 0 && errores_coverage == 0) begin
            $display("\n=== TODAS LAS PRUEBAS PASARON EXITOSAMENTE ===");
        end else begin
            $display("\n=== PRUEBAS FALLADAS ===");
            if (pruebas_incorrectas > 0) 
                $display("- %0d errores en operaciones básicas", pruebas_incorrectas);
            if (errores_coverage > 0)
                $display("- %0d errores en registros combinados", errores_coverage);
        end
        
        if (cov_percentage < 90.0) begin
            $display("\n=== ADVERTENCIA: Coverage bajo (%.2f%%) ===", cov_percentage);
            $display("Revisar los casos no cubiertos en el reporte de coverage");
        end
        
        $display("\n=== Simulacion completada ===");
    endfunction
    
    // Programa principal
    initial begin
        $display("\nIniciando simulacion...");
        rd = 0; wr = 0; sel = 0; data_driver = 0;
        sb.reset_model();
        
        // Esperar fin de reset
        @(negedge rst);
        
        // Ejecutar pruebas
        test_random_operations();
        
        // Add small delay to ensure last operations complete
        #(CLK_PERIOD*10);
        
        // Reporte final
        print_final_report();
        $finish;
    end
    
    // Timeout prevention
    initial begin
        #1000000; // 1ms timeout
        $display("Error: Simulation timeout");
        $finish;
    end
    
    // Monitor de transacciones
    always @(posedge clk) begin
        if (wr && rd) begin
            $warning("[MONITOR] Conflicto RD/WR detectado en t=%0t", $time);
        end
    end
endmodule