`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 19:59:28
// Design Name: 
// Module Name: bancoderegistros_tb
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


module bancoderegistros_tb;

    // Parámetros
    parameter CLK_PERIOD = 10; // 10ns = 100MHz

    // Señales de entrada
    logic        CLK;
    logic        RST;
    logic        RD;
    logic        WR;
    logic [3:0]  SEL;
    wire [15:0]  DATA;
    
    // Señal de datos bidireccional
    logic [15:0] data_driver;
    assign DATA = (RD && !WR) ? 16'bz : data_driver;
    
    // Instanciación del módulo bajo prueba
    bancoderegistros dut (
        .CLK(CLK),
        .RST(RST),
        .RD(RD),
        .WR(WR),
        .SEL(SEL),
        .DATA(DATA)
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
        RD = 0;
        WR = 0;
        SEL = 4'b0;
        data_driver = 16'h0000;
        #(CLK_PERIOD*2);
        
        // Liberar reset
        RST = 0;
        #(CLK_PERIOD);
        
        // Prueba 1: Escritura en registros de 16 bits (AX, CX, DX, BX)
        $display("\n=== Prueba 1: Escritura registros 16 bits (AX, CX, DX, BX) ===");
        test_escritura(4'b0000, 16'h1234); // AX = AH:AL
        test_escritura(4'b0001, 16'h5678); // CX = CH:CL
        test_escritura(4'b0010, 16'h9ABC); // DX = DH:DL
        test_escritura(4'b0011, 16'hDEF0); // BX = BH:BL
        
        // Prueba 2: Lectura de registros de 16 bits
        $display("\n=== Prueba 2: Lectura registros 16 bits ===");
        test_lectura(4'b0000, 16'h1234, "AX");
        test_lectura(4'b0001, 16'h5678, "CX");
        test_lectura(4'b0010, 16'h9ABC, "DX");
        test_lectura(4'b0011, 16'hDEF0, "BX");
        
        // Prueba 3: Escritura y lectura de partes bajas (AL, CL, DL, BL)
        $display("\n=== Prueba 3: Partes bajas (AL, CL, DL, BL) ===");
        test_escritura(4'b0100, 16'h00AA); // AL
        test_lectura(4'b0100, 16'h00AA, "AL");
        test_escritura(4'b0101, 16'h00BB); // CL
        test_lectura(4'b0101, 16'h00BB, "CL");
        test_escritura(4'b0110, 16'h00CC); // DL
        test_lectura(4'b0110, 16'h00CC, "DL");
        test_escritura(4'b0111, 16'h00DD); // BL
        test_lectura(4'b0111, 16'h00DD, "BL");
        
        // Prueba 4: Escritura y lectura de partes altas (AH, CH, DH, BH)
        $display("\n=== Prueba 4: Partes altas (AH, CH, DH, BH) ===");
        test_escritura(4'b1000, 16'h00EE); // AH
        test_lectura(4'b1000, 16'h00EE, "AH");
        test_escritura(4'b1001, 16'h00FF); // CH
        test_lectura(4'b1001, 16'h00FF, "CH");
        test_escritura(4'b1010, 16'h0011); // DH
        test_lectura(4'b1010, 16'h0011, "DH");
        test_escritura(4'b1011, 16'h0022); // BH
        test_lectura(4'b1011, 16'h0022, "BH");
        
        // Prueba 5: Registros de puntero/índice (SP, BP, SI, DI)
        $display("\n=== Prueba 5: Registros puntero/índice ===");
        test_escritura(4'b1100, 16'hF0F0); // SP
        test_lectura(4'b1100, 16'hF0F0, "SP");
        test_escritura(4'b1101, 16'hF1F1); // BP
        test_lectura(4'b1101, 16'hF1F1, "BP");
        test_escritura(4'b1110, 16'hF2F2); // SI
        test_lectura(4'b1110, 16'hF2F2, "SI");
        test_escritura(4'b1111, 16'hF3F3); // DI
        test_lectura(4'b1111, 16'hF3F3, "DI");
        
        // Prueba 6: Verificación de reset
        $display("\n=== Prueba 6: Reset ===");
        RST = 1;
        #(CLK_PERIOD);
        test_lectura(4'b0000, 16'h0000, "AX después de reset");
        test_lectura(4'b1100, 16'h0000, "SP después de reset");
        RST = 0;
        
        // Prueba 7: Conflicto RD/WR simultáneo
        $display("\n=== Prueba 7: Conflicto RD/WR simultáneo ===");
        RD = 1;
        WR = 1;
        SEL = 4'b0000;
        #(CLK_PERIOD);
        RD = 0;
        WR = 0;
        
        $display("\n=== Todas las pruebas completadas ===");
        $finish;
    end
    
    // Tarea para prueba de escritura
    task test_escritura(input [3:0] sel, input [15:0] data);
        WR = 1;
        RD = 0;
        SEL = sel;
        data_driver = data;
        #(CLK_PERIOD);
        WR = 0;
        $display("Escrito en SEL=%1h: DATA=16'h%04h", sel, data);
    endtask
    
    // Tarea para prueba de lectura
    task test_lectura(input [3:0] sel, input [15:0] expected, input string reg_name);
        WR = 0;
        RD = 1;
        SEL = sel;
        data_driver = 16'bz; // Poner el driver en alta impedancia
        #(CLK_PERIOD/2); // Leer en el medio del ciclo para asegurar estabilidad
        
        if (DATA === expected) begin
            $display("[OK] Lectura %s (SEL=%1h): Esperado 16'h%04h, Obtenido 16'h%04h", 
                     reg_name, sel, expected, DATA);
        end else begin
            $display("[ERROR] Lectura %s (SEL=%1h): Esperado 16'h%04h, Obtenido 16'h%04h", 
                     reg_name, sel, expected, DATA);
        end
        
        RD = 0;
        #(CLK_PERIOD/2);
    endtask
    
endmodule