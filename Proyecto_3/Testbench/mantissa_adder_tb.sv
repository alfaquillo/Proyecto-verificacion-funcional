`timescale 1ns / 1ps

module mantissa_adder_tb;
    // Inputs
    reg sign_a, sign_b;
    reg [23:0] mantissa_a, mantissa_b;
    
    // Outputs
    wire [24:0] sum_result;
    wire result_sign;
    
    // Instantiate the Unit Under Test (UUT)
    mantissa_adder uut (
        .sign_a(sign_a),
        .sign_b(sign_b),
        .mantissa_a(mantissa_a),
        .mantissa_b(mantissa_b),
        .sum_result(sum_result),
        .result_sign(result_sign)
    );
    
    // Test cases
    initial begin
        $display("Iniciando simulacion del sumador de mantisas\n");
        
        // Test 1: Suma de positivos (sin overflow)
        sign_a = 0; sign_b = 0;
        mantissa_a = 24'h400000; // 1.5
        mantissa_b = 24'h200000; // 1.25
        #10 check_results("Test 1: Suma de positivos", 
                        25'h600000, 0, 25'h600000, 0);
        
        // Test 2: Suma con overflow
        sign_a = 0; sign_b = 0;
        mantissa_a = 24'hC00000; // 1.75
        mantissa_b = 24'hC00000; // 1.75
        #10 check_results("Test 2: Suma con overflow", 
                        25'h1800000, 0, 25'h800000, 1);
        
        // Test 3: Resta de positivos (a > b)
        sign_a = 0; sign_b = 1;
        mantissa_a = 24'hC00000; // 1.75
        mantissa_b = 24'h400000; // 1.5
        #10 check_results("Test 3: Resta (a > b)", 
                        25'h800000, 0, 25'h800000, 0);
        
        // Test 4: Resta de positivos (b > a)
        sign_a = 0; sign_b = 1;
        mantissa_a = 24'h400000; // 1.5
        mantissa_b = 24'hC00000; // 1.75
        #10 check_results("Test 4: Resta (b > a)", 
                        25'h800000, 1, 25'h800000, 1);
        
        // Test 5: Suma de ceros
        sign_a = 0; sign_b = 0;
        mantissa_a = 24'h000000;
        mantissa_b = 24'h000000;
        #10 check_results("Test 5: Suma de ceros", 
                        25'h000000, 0, 25'h000000, 0);
        
        $display("\nSimulacion completada");
        #10 $finish;
    end
    
    task check_results(
        input string test_name,
        input [24:0] expected_sum,
        input expected_sign,
        input [24:0] expected_normalized,
        input expected_norm_sign
    );
    begin
        $display(test_name);
        $display("  Suma cruda:    %h (Expected: %h)", sum_result, expected_sum);
        $display("  Signo resultado: %b (Expected: %b)", result_sign, expected_sign);
        
        if (sum_result !== expected_sum || result_sign !== expected_sign) begin
            $display("  [ERROR] Resultados no coinciden!");
        end else begin
            $display("  [OK] Resultados correctos");
        end
        $display("");
    end
    endtask
endmodule
