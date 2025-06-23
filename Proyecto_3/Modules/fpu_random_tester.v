`timescale 1ns / 1ps

module fpu_random_tester;
    // Configurable parameters
    parameter NUM_TESTS_PER_OP = 100;  // Number of tests per operation
    parameter SEED = 12345;           // Seed for random generation
    
    // Signals
    reg [1:0] op;
    reg [31:0] a, b;
    wire [31:0] result;
    wire error, underflow, overflow;
    
    // Error counters
    integer add_errors;
    integer sub_errors;
    integer mult_errors;
    integer div_errors;
    integer total_tests;
    
    // FPU instance
    fpu_top uut (
        .op(op),
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .underflow(underflow),
        .overflow(overflow)
    );
    
    // Function to convert float to real (for display)
    function real fp32_to_real;
        input [31:0] val;
        reg [63:0] fp64;
        begin
            fp64 = {32'd0, val};
            fp32_to_real = $bitstoreal(fp64);
        end
    endfunction
    
    // Function to generate a random float (including special cases)
    function [31:0] random_float;
        input integer special_case_prob; // Probability of special case (0-100)
        reg [31:0] r;
        integer rand_val;
        begin
            rand_val = $random % 100;
            if (rand_val < 0) rand_val = -rand_val;
            
            if (rand_val < special_case_prob) begin
                // Generate a special case (NaN, Inf, zero, denormal)
                case ($random % 4)
                    0: r = {1'b0, 8'hFF, 23'h000000};  // +Inf
                    1: r = {1'b1, 8'hFF, 23'h000000};  // -Inf
                    2: r = {1'b0, 8'hFF, 23'h400000};  // NaN
                    3: r = {1'b0, 8'h00, 23'h000001};  // Denormal
                endcase
            end else begin
                // Generate a random normal number
                r = {$random, $random};
                // Ensure it's not NaN or Inf
                if (r[30:23] == 8'hFF) r[30:23] = 8'hFE;
            end
            random_float = r;
        end
    endfunction
    
    // Task to verify addition/subtraction
    task verify_add_sub;
        input [31:0] expected;
        input is_sub;
        real tolerance;
        real real_result, real_expected;
        begin
            tolerance = 0.0001;
            real_result = fp32_to_real(result);
            real_expected = fp32_to_real(expected);
            
            $display("Operation: %s (%.8g %s %.8g)", 
                    is_sub ? "Subtraction" : "Addition",
                    fp32_to_real(a), 
                    is_sub ? "-" : "+", 
                    fp32_to_real(b));
            $display("Result: %.8g (Expected: %.8g)", real_result, real_expected);
            
            // Check NaN
            if (expected[30:0] == {8'hFF, 23'h1} && result[30:0] == {8'hFF, 23'h1}) begin
                $display("TEST PASSED (NaN)");
            end
            // Check Infinity
            else if (expected[30:23] == 8'hFF && result[30:23] == 8'hFF) begin
                $display("TEST PASSED (Inf)");
            end
            // Check with tolerance
            else if ((real_result == real_expected) || 
                    ((real_result - real_expected)/real_expected < tolerance && 
                     (real_result - real_expected)/real_expected > -tolerance)) begin
                $display("TEST PASSED");
            end else begin
                $display("TEST FAILED");
                if (is_sub) sub_errors = sub_errors + 1;
                else add_errors = add_errors + 1;
            end
            $display("----------------------------------------");
        end
    endtask
    
    // Task to verify multiplication/division
    task verify_mult_div;
        input [31:0] expected;
        input is_div;
        real tolerance;
        real real_result, real_expected;
        begin
            tolerance = 0.0001;
            real_result = fp32_to_real(result);
            real_expected = fp32_to_real(expected);
            
            $display("Operation: %s (%.8g %s %.8g)", 
                    is_div ? "Division" : "Multiplication",
                    fp32_to_real(a), 
                    is_div ? "/" : "*", 
                    fp32_to_real(b));
            $display("Result: %.8g (Expected: %.8g)", real_result, real_expected);
            
            // Check NaN
            if (expected[30:0] == {8'hFF, 23'h1} && result[30:0] == {8'hFF, 23'h1}) begin
                $display("TEST PASSED (NaN)");
            end
            // Check Infinity
            else if (expected[30:23] == 8'hFF && result[30:23] == 8'hFF) begin
                $display("TEST PASSED (Inf)");
            end
            // Check with tolerance
            else if ((real_result == real_expected) || 
                    ((real_result - real_expected)/real_expected < tolerance && 
                     (real_result - real_expected)/real_expected > -tolerance)) begin
                $display("TEST PASSED");
            end else begin
                $display("TEST FAILED");
                if (is_div) div_errors = div_errors + 1;
                else mult_errors = mult_errors + 1;
            end
            $display("----------------------------------------");
        end
    endtask
    
    // Task to run addition tests
    task test_add;
        integer i;
        begin
            $display("\n===== Starting random ADDITION tests =====");
            op = 2'b00;
            for (i = 0; i < NUM_TESTS_PER_OP; i = i + 1) begin
                a = random_float(5); // 5% probability of special case
                b = random_float(5);
                #10;
                
                // Expected result is simply a + b (simulator will calculate this)
                verify_add_sub(a + b, 0);
                total_tests = total_tests + 1;
            end
            $display("===== ADDITION tests completed =====");
        end
    endtask
    
    // Task to run subtraction tests
    task test_sub;
        integer i;
        begin
            $display("\n===== Starting random SUBTRACTION tests =====");
            op = 2'b01;
            for (i = 0; i < NUM_TESTS_PER_OP; i = i + 1) begin
                a = random_float(5); // 5% probability of special case
                b = random_float(5);
                #10;
                
                // Expected result is simply a - b (simulator will calculate this)
                verify_add_sub(a - b, 1);
                total_tests = total_tests + 1;
            end
            $display("===== SUBTRACTION tests completed =====");
        end
    endtask
    
    // Task to run multiplication tests
    task test_mult;
        integer i;
        begin
            $display("\n===== Starting random MULTIPLICATION tests =====");
            op = 2'b10;
            for (i = 0; i < NUM_TESTS_PER_OP; i = i + 1) begin
                a = random_float(5); // 5% probability of special case
                b = random_float(5);
                #10;
                
                // Expected result is simply a * b (simulator will calculate this)
                verify_mult_div(a * b, 0);
                total_tests = total_tests + 1;
            end
            $display("===== MULTIPLICATION tests completed =====");
        end
    endtask
    
    // Task to run division tests
    task test_div;
        integer i;
        begin
            $display("\n===== Starting random DIVISION tests =====");
            op = 2'b11;
            for (i = 0; i < NUM_TESTS_PER_OP; i = i + 1) begin
                a = random_float(5); // 5% probability of special case
                b = random_float(5);
                #10;
                
                // Expected result is simply a / b (simulator will calculate this)
                verify_mult_div(a / b, 1);
                total_tests = total_tests + 1;
            end
            $display("===== DIVISION tests completed =====");
        end
    endtask
    
    // Initialization and test execution
    initial begin
        add_errors = 0;
        sub_errors = 0;
        mult_errors = 0;
        div_errors = 0;
        total_tests = 0;
        
        $display("===== Starting random FPU tester =====");
        $display("Configuration:");
        $display(" - Tests per operation: %0d", NUM_TESTS_PER_OP);
        $display(" - Random seed: %0d", SEED);
        
        // Initialize random seed by using it once
        $random(SEED);
        
        // Run tests
        test_add();
        test_sub();
        test_mult();
        test_div();
        
        // Final summary
        $display("\n===== Final summary =====");
        $display("Total tests executed: %0d", total_tests);
        $display("Addition errors: %0d", add_errors);
        $display("Subtraction errors: %0d", sub_errors);
        $display("Multiplication errors: %0d", mult_errors);
        $display("Division errors: %0d", div_errors);
        $display("Global error rate: %.2f%%", 
                (add_errors + sub_errors + mult_errors + div_errors) * 100.0 / total_tests);
        
        $display("\n===== Tests completed =====");
        $finish;
    end
endmodule