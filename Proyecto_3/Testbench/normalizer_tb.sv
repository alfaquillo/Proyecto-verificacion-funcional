`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 07:06:42 PM
// Design Name: 
// Module Name: normalizer_tb
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

module normalizer_tb;
    // Inputs
    reg [24:0] mantissa;
    reg [7:0] exponent;
    
    // Outputs
    wire [22:0] normalized_mantissa;
    wire [7:0] normalized_exp;
    wire underflow;
    wire overflow;
    wire inexact;
    
    // Instantiate UUT
    normalizer uut (
        .mantissa(mantissa),
        .exponent(exponent),
        .normalized_mantissa(normalized_mantissa),
        .normalized_exp(normalized_exp),
        .underflow(underflow),
        .overflow(overflow),
        .inexact(inexact)
    );
    
    // Test cases
    initial begin
        $display("Iniciando simulacion del normalizador\n");
        
        // Test 1: Overflow simple
        mantissa = 25'h1000000; // 1.000...0 (24 bits) con overflow
        exponent = 8'h7F;
        #10 check_results("Test 1: Overflow simple", 
                        23'h000000, 8'h80, 0, 0, 0);
        
        // Test 2: Underflow
        mantissa = 25'h0040000; // 0.000...01000000
        exponent = 8'h01;
        #10 check_results("Test 2: Underflow", 
                        23'h000000, 8'h00, 1, 0, 0);
        
        // Test 3: Normalización estándar
        mantissa = 25'h0800000; // 1.000...0 normal
        exponent = 8'h7F;
        #10 check_results("Test 3: Normalizacion estandar", 
                        23'h000000, 8'h7F, 0, 0, 0);
        
        // Test 4: Inexact
        mantissa = 25'h1800001; // Overflow + bit perdido
        exponent = 8'h7F;
        #10 check_results("Test 4: Inexact", 
                        23'h400000, 8'h80, 0, 0, 1);
        
        $display("\nSimulacion completada");
        #10 $finish;
    end
    
    task check_results(
        input string test_name,
        input [22:0] exp_mantissa,
        input [7:0] exp_exp,
        input exp_underflow,
        input exp_overflow,
        input exp_inexact
    );
    begin
        $display(test_name);
        $display("  Mantisa: %h (Expected: %h)", normalized_mantissa, exp_mantissa);
        $display("  Exp:     %h (Expected: %h)", normalized_exp, exp_exp);
        $display("  Flags:   U:%b O:%b I:%b (Expected: U:%b O:%b I:%b)",
                underflow, overflow, inexact,
                exp_underflow, exp_overflow, exp_inexact);
        
        if (normalized_mantissa !== exp_mantissa ||
            normalized_exp !== exp_exp ||
            underflow !== exp_underflow ||
            overflow !== exp_overflow ||
            inexact !== exp_inexact) begin
            $display("  [ERROR] Resultados no coinciden!");
        end else begin
            $display("  [OK] Resultados correctos");
        end
        $display("");
    end
    endtask
endmodule
