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
    
    // Variables para generación aleatoria
    integer seed = 42;  // Semilla reproducible
    
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
        wr = is_write;
        rd = ~is_write;
        sel = addr;
        data_driver = (is_write) ? val : 16'bz;
        
        #CLK_PERIOD;
        
        if(wr) begin
            sb.update_model(addr, val);
            $display("[WRITE] SEL=%h, DATA=%h", addr, val);
        end
        else begin
            #(CLK_PERIOD/2);
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
        logic [15:0] expected_combined, expected_high, expected_low;
        
        // 1. Escribir valor en registro combinado
        apply_transaction(1, reg_combined, random_val);
        
        // 2. Leer y verificar partes
        expected_combined = sb.get_expected(reg_combined);
        expected_high = sb.get_expected(reg_high);
        expected_low = sb.get_expected(reg_low);
        
        // Verificación de partes
        if ({expected_high[15:8], expected_low[7:0]} !== expected_combined) begin
            $error("[%s] Mismatch: Combined=%h, High+Low=%h%h", 
                  reg_name, expected_combined, expected_high[15:8], expected_low[7:0]);
        end
        else begin
            $display("[%s] Combinación correcta: %h = %h%h", 
                   reg_name, expected_combined, expected_high[15:8], expected_low[7:0]);
        end
    endtask
    
    // Secuencia de reset
    task automatic test_reset();
        $display("\n=== TEST 1: Reset ===");
        rst = 1;
        #(CLK_PERIOD*2);
        rst = 0;
        sb.reset_model();
        
        // Verificar todos los registros en 0
        foreach(sb.model_mem[i]) begin
            apply_transaction(0, i);
        end
    endtask
    
    // Secuencia de pruebas aleatorias
        task test_random_operations();
            $display("\n=== TEST 2: Operaciones Aleatorias (%0d pruebas) ===", NUM_TESTS);
            
            for (int i = 0; i < NUM_TESTS; i++) begin
                $display("\n=== Prueba %0d ===", i+1);
                
                // Operación aleatoria
                if(get_random_operation()) begin
                    apply_transaction(1, get_random_register(), get_random_value());
                end
                else begin
                    apply_transaction(0, get_random_register());
                end
                
                // Probar registros combinados cada 20 pruebas
                if(i % 20 == 0 && i != 0) begin  // Añadido i != 0 para evitar duplicar la primera
                    test_register_pair(8, 0, 4, "AX");
                    test_register_pair(9, 1, 5, "BX");
                    test_register_pair(10, 2, 6, "CX");
                    test_register_pair(11, 3, 7, "DX");
                end
            end
            
            $display("Todas las %0d pruebas completadas", NUM_TESTS);
        endtask
    
    // Programa principal
    initial begin
        // Inicialización
        $display("\nIniciando simulacion...");
        rd = 0; wr = 0; sel = 0; data_driver = 0;
        
        sb.reset_model();
        
        //#2000; //tiempo de prueba mas largo
        
        // Ejecutar pruebas
        test_reset();
        test_random_operations();
        
        // Reporte final
        $display("\n=== Resumen Coverage ===");
        $display("Coverage: %.2f%%", cov.get_coverage());
        
        $display("\n=== Simulacion completada ===");
        $finish;
    end
    
    // Monitor de transacciones
    always @(posedge clk) begin
        if (wr && rd) begin
            $warning("[MONITOR] Conflicto RD/WR detectado en t=%0t", $time);
        end
    end
endmodule