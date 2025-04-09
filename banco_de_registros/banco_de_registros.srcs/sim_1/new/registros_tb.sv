`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 19:30:23
// Design Name: 
// Module Name: registros_tb
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

`timescale 1ns / 1ps

module registros_tb;

    // Parámetros
    parameter CLK_PERIOD = 10; // 10ns = 100MHz

    // Señales de entrada
    logic        CLK;
    logic        RST;
    logic [15:0] DATA;
    logic [11:0] WE;
    
    // Señales de salida
    logic [7:0]  AL, CL, DL, BL, AH, CH, DH, BH;
    logic [15:0] SP, BP, SI, DI;
    
    // Instanciación del módulo bajo prueba
    registros dut (
        .CLK(CLK),
        .RST(RST),
        .DATA(DATA),
        .WE(WE),
        .AL(AL),
        .CL(CL),
        .DL(DL),
        .BL(BL),
        .AH(AH),
        .CH(CH),
        .DH(DH),
        .BH(BH),
        .SP(SP),
        .BP(BP),
        .SI(SI),
        .DI(DI)
    );
    
    // Generación de reloj
    initial begin
        CLK = 0;
        forever #(CLK_PERIOD/2) CLK = ~CLK;
    end
    
    // Procedimiento de prueba
    initial begin
        // Inicialización
        RST = 1;
        DATA = 16'h0000;
        WE = 12'b000000000000;
        #(CLK_PERIOD*2);
        
        // Liberar reset
        RST = 0;
        #(CLK_PERIOD);
        
        // Prueba 1: Escritura en registros de 8 bits (partes bajas)
        $display("=== Prueba 1: Escritura partes bajas (AL, CL, DL, BL) ===");
        DATA = 16'hA5A4;
        WE = 12'b100000000000; // WE[11] para AL
        #CLK_PERIOD;
        verificar_8bits(AL, 8'hA4, "AL");
        WE = 12'b010000000000; // WE[10] para CL
        #CLK_PERIOD;
        verificar_8bits(CL, 8'hA4, "CL");
        WE = 12'b001000000000; // WE[9] para DL
        #CLK_PERIOD;
        verificar_8bits(DL, 8'hA4, "DL");
        WE = 12'b000100000000; // WE[8] para BL
        #CLK_PERIOD;
        verificar_8bits(BL, 8'hA4, "BL");
        WE = 12'b000000000000;
        #CLK_PERIOD;
        
        // Prueba 2: Escritura en registros de 8 bits (partes altas)
        $display("\n=== Prueba 2: Escritura partes altas (AH, CH, DH, BH) ===");
        DATA = 16'hB3B4;
        WE = 12'b000010000000; // WE[7] para AH
        #CLK_PERIOD;
        verificar_8bits(AH, 8'hB3, "AH");
        WE = 12'b000001000000; // WE[6] para CH
        #CLK_PERIOD;
        verificar_8bits(CH, 8'hB3, "CH");
        WE = 12'b000000100000; // WE[5] para DH
        #CLK_PERIOD;
        verificar_8bits(DH, 8'hB3, "DH");
        WE = 12'b000000010000; // WE[4] para BH
        #CLK_PERIOD;
        verificar_8bits(BH, 8'hB3, "BH");
        WE = 12'b000000000000;
        #CLK_PERIOD;
        
        // Prueba 3: Escritura en registros de 16 bits
        $display("\n=== Prueba 3: Escritura registros 16 bits (SP, BP, SI, DI) ===");
        DATA = 16'hC0DE;
        WE = 12'b000000001000; // WE[3] para SP
        #CLK_PERIOD;
        verificar_16bits(SP, 16'hC0DE, "SP");
        WE = 12'b000000000100; // WE[2] para BP
        #CLK_PERIOD;
        verificar_16bits(BP, 16'hC0DE, "BP");
        WE = 12'b000000000010; // WE[1] para SI
        #CLK_PERIOD;
        verificar_16bits(SI, 16'hC0DE, "SI");
        WE = 12'b000000000001; // WE[0] para DI
        #CLK_PERIOD;
        verificar_16bits(DI, 16'hC0DE, "DI");
        WE = 12'b000000000000;
        #CLK_PERIOD;
        
        // Prueba 4: Verificar que los registros mantienen su valor sin WE
        $display("\n=== Prueba 4: Retención de valores sin WE ===");
        DATA = 16'hFFFF;
        #(CLK_PERIOD*2);
        verificar_8bits(AL, 8'hA4, "AL (retención)");
        verificar_8bits(AH, 8'hB3, "AH (retención)");
        verificar_16bits(SP, 16'hC0DE, "SP (retención)");
        
        // Prueba 5: Reset asincrónico
        $display("\n=== Prueba 5: Reset asincrónico ===");
        RST = 1;
        #(CLK_PERIOD/2); // Reset en medio de un ciclo de reloj
        verificar_8bits(AL, 8'h00, "AL después de reset");
        verificar_8bits(AH, 8'h00, "AH después de reset");
        verificar_16bits(SP, 16'h0000, "SP después de reset");
        #(CLK_PERIOD);
        
        $display("\n=== Todas las pruebas completadas ===");
        $finish;
    end
    
    // Tarea para verificar registros de 8 bits
    task verificar_8bits(input [7:0] valor_actual, input [7:0] valor_esperado, input string nombre);
        if (valor_actual === valor_esperado) begin
            $display("[OK] %s = 8'h%02h", nombre, valor_actual);
        end else begin
            $display("[ERROR] %s: Esperado 8'h%02h, Obtenido 8'h%02h", 
                     nombre, valor_esperado, valor_actual);
        end
    endtask
    
    // Tarea para verificar registros de 16 bits
    task verificar_16bits(input [15:0] valor_actual, input [15:0] valor_esperado, input string nombre);
        if (valor_actual === valor_esperado) begin
            $display("[OK] %s = 16'h%04h", nombre, valor_actual);
        end else begin
            $display("[ERROR] %s: Esperado 16'h%04h, Obtenido 16'h%04h", 
                     nombre, valor_esperado, valor_actual);
        end
    endtask
    
endmodule

