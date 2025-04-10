`timescale 1ns / 1ps
`include "bancoderegistros_scoreboard.sv"
`include "bancoderegistros_coverage.sv"

module bancoderegistros_tb;
    // Parámetros y señales
    parameter CLK_PERIOD = 10;
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
    
    // Definición de valores de prueba
    localparam logic [15:0] TEST_VALUES[12] = '{
    // Registros combinados (SEL 8-11)
    16'h9A3D,  // AX
    16'h4B7E,  // CX
    16'hC2F1,  // DX
    16'h5E8A,  // BX
    
    // Partes bajas (SEL 4-7)
    16'h006D,  // AL
    16'h002F,  // CL
    16'h0091,  // DL
    16'h00B3,  // BL
    
    // Partes altas (SEL 0-3)
    16'h0E00,  // AH
    16'h0F00,  // CH
    16'hA000,  // DH
    16'hB000   // BH
    };
    
    // Generación de reloj
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end
    
    // Tareas de prueba
    task automatic write_reg(input [3:0] addr, input [15:0] val);
        wr = 1; rd = 0; sel = addr; data_driver = val;
        sb.update_model(addr, val); // Actualizar modelo
        #CLK_PERIOD;
        wr = 0;
        $display("[WRITE] SEL=%h, DATA=%h", addr, val);
    endtask
    
    task automatic read_reg(input [3:0] addr, input string name);
        wr = 0; rd = 1; sel = addr; data_driver = 16'bz;
        #(CLK_PERIOD/2);
        sb.check_scoreboard(name, sb.get_expected(addr), data);
        rd = 0;
        #(CLK_PERIOD/2);
    endtask
    
    // Secuencia de pruebas
    task test_reset();
        $display("\n=== TEST 1: Reset ===");
        rst = 1;
        #(CLK_PERIOD*2);
        rst = 0;
        sb.reset_model();
        
        // Verificar todos los registros en 0
        foreach(sb.model_mem[i]) begin
            read_reg(i, $sformatf("REG[%0d]", i));
        end
    endtask
    
    task test_normal_operations();
        $display("\n=== TEST 2: Operaciones Normales ===");
        
        // 1. Probar registros combinados (AX-DX)
        for (int i=0; i<4; i++) begin
            write_reg(i+8, TEST_VALUES[i]);
            read_reg(i+8, $sformatf("REG_COMB[%0d]", i));
        end
        
        // 2. Probar partes bajas (AL-BL)
        for (int i=4; i<8; i++) begin
            write_reg(i, TEST_VALUES[i]);
            read_reg(i, $sformatf("REG_LOW[%0d]", i-4));
        end
        
        // 3. Probar partes altas (AH-BH)
        for (int i=8; i<12; i++) begin
            write_reg(i-8, TEST_VALUES[i]);
            read_reg(i-8, $sformatf("REG_HIGH[%0d]", i-8));
        end
    endtask
    
    task test_edge_cases();
        $display("\n=== TEST 3: Casos Extremos ===");
        // 1. Conflicto RD/WR
        $display("Caso 1: Conflicto RD/WR simultáneo");
        wr = 1; rd = 1; sel = 0; data_driver = 16'hFFFF;
        #CLK_PERIOD;
        
        // 2. Escritura durante reset
        $display("Caso 2: Escritura durante reset");
        rst = 1; wr = 1; sel = 4; data_driver = 16'h1234;
        #CLK_PERIOD;
        rst = 0; wr = 0;
        
        // 3. Selección inválida
        $display("Caso 3: Selección inválida");
        sel = 4'hF + 1; // Fuera de rango
        rd = 1;
        #CLK_PERIOD;
        rd = 0;
    endtask
    
    // Programa principal
    initial begin
        // Inicialización
        $display("\nIniciando simulacion...");
        rd = 0; wr = 0; sel = 0; data_driver = 0;
        sb.reset_model();
        
        // Ejecutar pruebas
        test_reset();
        test_normal_operations();
        test_edge_cases();
        
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