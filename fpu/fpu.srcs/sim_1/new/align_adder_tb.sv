`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 05:37:31 PM
// Design Name: 
// Module Name: align_adder_tb
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

module align_adder_tb;
    // Señales de entrada
    reg [7:0] exp_a, exp_b;
    reg [23:0] mantissa_a, mantissa_b;
    reg is_zero_a, is_zero_b;
    reg is_inf_a, is_inf_b;
    reg is_nan_a, is_nan_b;
    
    // Señales de salida
    wire [7:0] final_exp;
    wire [23:0] aligned_mantissa_a, aligned_mantissa_b;
    wire [2:0] status;
    
    // Instancia del módulo bajo prueba
    align_adder dut (
        .exp_a(exp_a),
        .exp_b(exp_b),
        .mantissa_a(mantissa_a),
        .mantissa_b(mantissa_b),
        .is_zero_a(is_zero_a),
        .is_zero_b(is_zero_b),
        .is_inf_a(is_inf_a),
        .is_inf_b(is_inf_b),
        .is_nan_a(is_nan_a),
        .is_nan_b(is_nan_b),
        .final_exp(final_exp),
        .aligned_mantissa_a(aligned_mantissa_a),
        .aligned_mantissa_b(aligned_mantissa_b),
        .status(status)
    );
    
    // Variables para verificación
    reg [7:0] expected_exp;
    reg [23:0] expected_mant_a, expected_mant_b;
    reg [2:0] expected_status;
    
    // Generación de estímulos
    initial begin
        $display("\nIniciando simulación del alineador de punto flotante\n");
        
        // --------------------------------------------
        // Test 1: Caso básico (exp_a > exp_b)
        // --------------------------------------------
        exp_a = 8'h82;  // 130
        exp_b = 8'h80;  // 128
        mantissa_a = 24'h800000;
        mantissa_b = 24'h800000;
        is_zero_a = 0; is_zero_b = 0;
        is_inf_a = 0; is_inf_b = 0;
        is_nan_a = 0; is_nan_b = 0;
        
        expected_exp = 8'h82;
        expected_mant_a = 24'h800000;
        expected_mant_b = 24'h600000;  // 0x800000 >> 2
        expected_status = 3'b000;
        
        #10 check_results(
            "Test 1: Caso básico (exp_a > exp_b)",
            expected_exp, expected_mant_a, expected_mant_b, expected_status);
        
        // --------------------------------------------
        // Test 2: Caso básico (exp_b > exp_a)
        // --------------------------------------------
        exp_a = 8'h7E;  // 126
        exp_b = 8'h81;  // 129
        mantissa_a = 24'hC00000;
        mantissa_b = 24'h400000;
        is_zero_a = 0; is_zero_b = 0;
        is_inf_a = 0; is_inf_b = 0;
        is_nan_a = 0; is_nan_b = 0;
        
        expected_exp = 8'h81;
        expected_mant_a = 24'h380000;  // 0xC00000 >> 3
        expected_mant_b = 24'h400000;
        expected_status = 3'b000;  // Inexacto (pérdida de bits)
        
        #10 check_results(
            "Test 2: Caso básico (exp_b > exp_a)",
            expected_exp, expected_mant_a, expected_mant_b, expected_status);
        
        // --------------------------------------------
        // Test 3: Diferencia grande (underflow)
        // --------------------------------------------
        exp_a = 8'h90;  // 144
        exp_b = 8'h60;  // 96
        mantissa_a = 24'hFFFFFF;
        mantissa_b = 24'h800000;
        is_zero_a = 0; is_zero_b = 0;
        is_inf_a = 0; is_inf_b = 0;
        is_nan_a = 0; is_nan_b = 0;
        
        expected_exp = 8'h90;
        expected_mant_a = 24'hFFFFFF;
        expected_mant_b = 24'h000000;  // Todos los bits desplazados
        expected_status = 3'b101;  // Underflow + inexacto
        
        #10 check_results(
            "Test 3: Diferencia grande (underflow)",
            expected_exp, expected_mant_a, expected_mant_b, expected_status);
        
        // --------------------------------------------
        // Test 4: Operación con NaN
        // --------------------------------------------
        exp_a = 8'h7F;
        exp_b = 8'h7F;
        mantissa_a = 24'h000000;
        mantissa_b = 24'h000001;  // NaN
        is_zero_a = 0; is_zero_b = 0;
        is_inf_a = 0; is_inf_b = 0;
        is_nan_a = 0; is_nan_b = 1;
        
        expected_exp = 8'hFF;
        expected_mant_a = 24'hFFFFFF;  // NaN canónico
        expected_mant_b = 24'hFFFFFF;
        expected_status = 3'b100;  // Inexacto
        
        #10 check_results(
            "Test 4: Operación con NaN",
            expected_exp, expected_mant_a, expected_mant_b, expected_status);
        
        // --------------------------------------------
        // Test 5: Operación con infinito
        // --------------------------------------------
        exp_a = 8'hFF;  // Infinito
        exp_b = 8'h80;
        mantissa_a = 24'h000000;
        mantissa_b = 24'h800000;
        is_zero_a = 0; is_zero_b = 0;
        is_inf_a = 1; is_inf_b = 0;
        is_nan_a = 0; is_nan_b = 0;
        
        expected_exp = 8'hFF;
        expected_mant_a = 24'h800000;
        expected_mant_b = 24'h000000;
        expected_status = 3'b000;
        
        #10 check_results(
            "Test 5: Operación con infinito",
            expected_exp, expected_mant_a, expected_mant_b, expected_status);
        
        // --------------------------------------------
        // Test 6: Suma de ceros
        // --------------------------------------------
        exp_a = 8'h00;
        exp_b = 8'h00;
        mantissa_a = 24'h000000;
        mantissa_b = 24'h000000;
        is_zero_a = 1; is_zero_b = 1;
        is_inf_a = 0; is_inf_b = 0;
        is_nan_a = 0; is_nan_b = 0;
        
        expected_exp = 8'h00;
        expected_mant_a = 24'h000000;
        expected_mant_b = 24'h000000;
        expected_status = 3'b000;
        
        #10 check_results(
            "Test 6: Suma de ceros",
            expected_exp, expected_mant_a, expected_mant_b, expected_status);
        
        $display("\nSimulación completada\n");
        #10 $finish;
    end
    
    // Tarea para verificar y mostrar resultados
    task check_results(
        input string test_name,
        input [7:0] exp_exp,
        input [23:0] exp_mant_a,
        input [23:0] exp_mant_b,
        input [2:0] exp_status);
    begin
        $display(test_name);
        $display("  Final Exp:   %h (Expected: %h)", final_exp, exp_exp);
        $display("  Mantissa A:  %h (Expected: %h)", aligned_mantissa_a, exp_mant_a);
        $display("  Mantissa B:  %h (Expected: %h)", aligned_mantissa_b, exp_mant_b);
        $display("  Status:      %b (Expected: %b) [UO-] Underflow, Overflow, Inexact", 
                status, exp_status);
        
        // Verificación automática
        if (final_exp !== exp_exp || 
            aligned_mantissa_a !== exp_mant_a ||
            aligned_mantissa_b !== exp_mant_b ||
            status !== exp_status) begin
            $display("  [ERROR] Resultados no coinciden!");
        end else begin
            $display("  [OK] Todos los valores coinciden");
        end
        $display("");
    end
    endtask
endmodule
