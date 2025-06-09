`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 05:06:45 PM
// Design Name: 
// Module Name: float_deco_tb
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

module float_deco_tb;
    // Señales de entrada/salida
    reg [31:0] num;
    wire sign;
    wire [7:0] exponent;
    wire [23:0] mantissa;
    wire is_zero;
    wire is_inf;
    wire is_nan;
    
    // Instancia del módulo bajo prueba (DUT)
    float_deco dut (
        .num(num),
        .sign(sign),
        .exponent(exponent),
        .mantissa(mantissa),
        .is_zero(is_zero),
        .is_inf(is_inf),
        .is_nan(is_nan)
    );
    
    // Generación de estímulos
    initial begin
        $display("\nIniciando simulación del decodificador de punto flotante\n");
        
        // Test 1: Cero positivo
        num = 32'h00000000;
        #10 check_results(
            "Test 1: Zero (0x00000000)",
            0, 8'h00, 24'h000000, 1, 0, 0);
        
        // Test 2: Cero negativo
        num = 32'h80000000;
        #10 check_results(
            "Test 2: Negative Zero (0x80000000)",
            1, 8'h00, 24'h000000, 1, 0, 0);
        
        // Test 3: Número normalizado positivo
        num = 32'h40490FDB; // 3.1415927
        #10 check_results(
            "Test 3: Positive Normalized (0x40490FDB)",
            0, 8'h80, 24'hc90fdb, 0, 0, 0);
        
        // Test 4: Número normalizado negativo
        num = 32'hC0490FDB; // -3.1415927
        #10 check_results(
            "Test 4: Negative Normalized (0xC0490FDB)",
            1, 8'h80, 24'hc90fdb, 0, 0, 0);
        
        // Test 5: Subnormal positivo
        num = 32'h00000001; // +1.4e-45
        #10 check_results(
            "Test 5: Positive Subnormal (0x00000001)",
            0, 8'h00, 24'h000001, 0, 0, 0);
        
        // Test 6: Infinito positivo
        num = 32'h7F800000;
        #10 check_results(
            "Test 6: Positive Infinity (0x7F800000)",
            0, 8'hff, 24'h000000, 0, 1, 0);
        
        // Test 7: Infinito negativo
        num = 32'hFF800000;
        #10 check_results(
            "Test 7: Negative Infinity (0xFF800000)",
            1, 8'hff, 24'h000000, 0, 1, 0);
        
        // Test 8: NaN
        num = 32'h7FFFFFFF;
        #10 check_results(
            "Test 8: NaN (0x7FFFFFFF)",
            0, 8'hff, 24'h7fffff, 0, 0, 1);
        
        // Test 9: NaN con payload
        num = 32'h7F812345;
        #10 check_results(
            "Test 9: NaN with payload (0x7F812345)",
            0, 8'hff, 24'h012345, 0, 0, 1);
        
        // Test 10: Mínimo normalizado positivo
        num = 32'h00800000;
        #10 check_results(
            "Test 10: Smallest Normalized Positive (0x00800000)",
            0, 8'h01, 24'h800000, 0, 0, 0);
        
        $display("\nSimulación completada\n");
        #10 $finish;
    end
    
    // Tarea para verificar y mostrar resultados
    task check_results(
        input string test_name,
        input expected_sign,
        input [7:0] expected_exp,
        input [23:0] expected_mant,
        input expected_zero,
        input expected_inf,
        input expected_nan);
    begin
        $display(test_name);
        $display("  Sign: %b (Expected: %b)", sign, expected_sign);
        $display("  Exp:  %h (Expected: %h)", exponent, expected_exp);
        $display("  Mant: %h (Expected: %h)", mantissa, expected_mant);
        $display("  is_zero: %b (Expected: %b)", is_zero, expected_zero);
        $display("  is_inf: %b (Expected: %b)", is_inf, expected_inf);
        $display("  is_nan: %b (Expected: %b)", is_nan, expected_nan);
        
        // Verificación automática
        if (sign !== expected_sign || 
            exponent !== expected_exp ||
            mantissa !== expected_mant ||
            is_zero !== expected_zero ||
            is_inf !== expected_inf ||
            is_nan !== expected_nan) begin
            $display("  [ERROR] Resultados no coinciden!");
        end else begin
            $display("  [OK] Todos los valores coinciden");
        end
        $display("");
    end
    endtask
endmodule
