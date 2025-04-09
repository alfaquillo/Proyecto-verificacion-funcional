`timescale 1ns / 1ps

module bancoderegistros_tb;
    parameter CLK_PERIOD = 10;
    logic CLK, RST, RD, WR;
    logic [3:0] SEL;
    wire [15:0] DATA;
    logic [15:0] data_driver;
    
    assign DATA = (RD && !WR) ? 16'bz : data_driver;
    
    bancoderegistros dut (.*);
    
    initial begin
        CLK = 0;
        forever #(CLK_PERIOD/2) CLK = ~CLK;
    end
    
    initial begin
        // Valores completamente únicos para cada registro
        logic [15:0] test_values[16] = '{
            16'h9A3D,  // [0] AX
            16'h4B7E,  // [1] CX
            16'hC2F1,  // [2] DX
            16'h5E8A,  // [3] BX
            16'h006D,  // [4] AL
            16'h002F,  // [5] CL
            16'h0091,  // [6] DL
            16'h00B3,  // [7] BL
            16'h0e00,  // [8] AH
            16'h0f00,  // [9] CH
            16'ha000,  // [10] DH
            16'hb000,  // [11] BH
            16'hF1E2,  // [12] SP
            16'hD3C4,  // [13] BP
            16'hB5A6,  // [14] SI
            16'h9788   // [15] DI
        };
        
        // Inicialización
        $display("\nIniciando pruebas con valores únicos...");
        RST = 1; RD = 0; WR = 0; SEL = 0; data_driver = 0;
        #(CLK_PERIOD*2); 
        RST = 0; 
        #(CLK_PERIOD);

        // ========== PRUEBA DE ESCRITURA/LECTURA ==========
        
        // 1. Registros combinados (AX, CX, DX, BX)
        $display("\n=== Prueba 1: Registros combinados (16 bits) ===");
        test_escritura_lectura(4'h8, test_values[0], "AX");  // SEL=8: AX
        test_escritura_lectura(4'h9, test_values[1], "CX");  // SEL=9: CX
        test_escritura_lectura(4'hA, test_values[2], "DX");  // SEL=A: DX
        test_escritura_lectura(4'hB, test_values[3], "BX");  // SEL=B: BX

        // 2. Partes bajas (AL, CL, DL, BL)
        $display("\n=== Prueba 2: Partes bajas (8 bits) ===");
        test_escritura_lectura(4'h4, test_values[4], "AL");  // SEL=4: AL
        test_escritura_lectura(4'h5, test_values[5], "CL");  // SEL=5: CL
        test_escritura_lectura(4'h6, test_values[6], "DL");  // SEL=6: DL
        test_escritura_lectura(4'h7, test_values[7], "BL");  // SEL=7: BL

        // 3. Partes altas (AH, CH, DH, BH)
        $display("\n=== Prueba 3: Partes altas (8 bits) ===");
        test_escritura_lectura(4'h0, test_values[8], "AH");  // SEL=0: AH
        test_escritura_lectura(4'h1, test_values[9], "CH");  // SEL=1: CH
        test_escritura_lectura(4'h2, test_values[10], "DH"); // SEL=2: DH
        test_escritura_lectura(4'h3, test_values[11], "BH"); // SEL=3: BH

        // 4. Registros puntero (SP, BP, SI, DI)
        $display("\n=== Prueba 4: Registros puntero (16 bits) ===");
        test_escritura_lectura(4'hC, test_values[12], "SP"); // SEL=C: SP
        test_escritura_lectura(4'hD, test_values[13], "BP"); // SEL=D: BP
        test_escritura_lectura(4'hE, test_values[14], "SI"); // SEL=E: SI
        test_escritura_lectura(4'hF, test_values[15], "DI"); // SEL=F: DI

        // 5. Verificación de reset
        $display("\n=== Prueba 5: Reset ===");
        RST = 1; #(CLK_PERIOD);
        verificar_reset(4'h8, "AX");
        verificar_reset(4'hC, "SP");
        RST = 0;

        $display("\n=== Todas las pruebas completadas ===");
        $finish;
    end

    // ========== TAREAS AUXILIARES ==========
    
    task automatic test_escritura_lectura(
        input [3:0] sel,
        input [15:0] valor,
        input string nombre_reg
    );
        // Escritura
        WR = 1; RD = 0; SEL = sel; data_driver = valor;
        #(CLK_PERIOD);
        WR = 0;
        $display("Escrito en %s (SEL=%1h): %04h", nombre_reg, sel, valor);
        
        // Lectura
        WR = 0; RD = 1; SEL = sel; data_driver = 16'bz;
        #(CLK_PERIOD/2);
        
        if (DATA === valor) begin
            $display("[OK] Lectura %s: Esperado %04h, Obtenido %04h", 
                    nombre_reg, valor, DATA);
        end else begin
            $display("[ERROR] Lectura %s: Esperado %04h, Obtenido %04h", 
                    nombre_reg, valor, DATA);
        end
        
        RD = 0;
        #(CLK_PERIOD/2);
    endtask

    task automatic verificar_reset(
        input [3:0] sel,
        input string nombre_reg
    );
        WR = 0; RD = 1; SEL = sel; data_driver = 16'bz;
        #(CLK_PERIOD/2);
        
        if (DATA === 16'h0000) begin
            $display("[OK] %s después de reset: 0000", nombre_reg);
        end else begin
            $display("[ERROR] %s después de reset: %04h (debería ser 0000)", 
                    nombre_reg, DATA);
        end
        
        RD = 0;
        #(CLK_PERIOD/2);
    endtask
endmodule