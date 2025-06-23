module tb_float_divider;

    reg [31:0] a, b;
    wire [31:0] result;
    wire error, overflow, underflow;

    float_divider uut (
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .overflow(overflow),
        .underflow(underflow)
    );

    // Improved display function
    function [8*100:1] display_float;
        input [31:0] num;
        reg sign;
        reg [7:0] exponent;
        reg [22:0] mantissa;
        reg [8*20:0] type_str;
        begin
            sign = num[31];
            exponent = num[30:23];
            mantissa = num[22:0];
            
            if (exponent == 8'hFF) begin
                if (mantissa == 0) 
                    type_str = (sign ? "-" : "+") + "Infinity";
                else
                    type_str = (sign ? "-" : "+") + "NaN";
            end
            else if (exponent == 0) begin
                if (mantissa == 0)
                    type_str = (sign ? "-" : "+") + "Zero";
                else
                    type_str = (sign ? "-" : "+") + "Denormal";
            end
            else begin
                type_str = (sign ? "-" : "+") + "Normal";
            end
            
            display_float = {type_str, " (Sign: ", sign ? "1" : "0", 
                           ", Exp: ", exponent[7] ? "1" : "0", exponent[6] ? "1" : "0",
                           exponent[5] ? "1" : "0", exponent[4] ? "1" : "0",
                           exponent[3] ? "1" : "0", exponent[2] ? "1" : "0",
                           exponent[1] ? "1" : "0", exponent[0] ? "1" : "0",
                           ", Mant: ", mantissa[22] ? "1" : "0", mantissa[21] ? "1" : "0",
                           mantissa[20] ? "1" : "0", mantissa[19] ? "1" : "0",
                           mantissa[18] ? "1" : "0", mantissa[17] ? "1" : "0",
                           mantissa[16] ? "1" : "0", mantissa[15] ? "1" : "0",
                           mantissa[14] ? "1" : "0", mantissa[13] ? "1" : "0",
                           mantissa[12] ? "1" : "0", mantissa[11] ? "1" : "0",
                           mantissa[10] ? "1" : "0", mantissa[9] ? "1" : "0",
                           mantissa[8] ? "1" : "0", mantissa[7] ? "1" : "0",
                           mantissa[6] ? "1" : "0", mantissa[5] ? "1" : "0",
                           mantissa[4] ? "1" : "0", mantissa[3] ? "1" : "0",
                           mantissa[2] ? "1" : "0", mantissa[1] ? "1" : "0",
                           mantissa[0] ? "1" : "0", ")"};
        end
    endfunction

    task display_test;
        input [31:0] a_in;
        input [31:0] b_in;
        begin
            $display("\nInput A: %s", display_float(a_in));
            $display("Input B: %s", display_float(b_in));
            $display("----------------------------------------");
        end
    endtask

    // Modified verify_result to handle NaN cases properly
    task verify_result;
        input [31:0] expected;
        input expected_error;
        input expected_overflow;
        input expected_underflow;
        begin
            $display("Result:   %s", display_float(result));
            $display("Expected: %s", display_float(expected));
            $display("Error: %b (expected: %b)", error, expected_error);
            $display("Overflow: %b (expected: %b)", overflow, expected_overflow);
            $display("Underflow: %b (expected: %b)", underflow, expected_underflow);
            
            // Special handling for NaN (any non-zero mantissa is valid)
            if (expected[30:23] == 8'hFF && expected[22:0] != 0) begin
                if (result[30:23] == 8'hFF && result[22:0] != 0 && 
                    error === expected_error &&
                    overflow === expected_overflow &&
                    underflow === expected_underflow) begin
                    $display("TEST PASSED (NaN)");
                end else begin
                    $display("TEST FAILED");
                end
            end
            else if (result === expected && 
                    error === expected_error &&
                    overflow === expected_overflow &&
                    underflow === expected_underflow) begin
                $display("TEST PASSED");
            end else begin
                $display("TEST FAILED");
            end
            $display("----------------------------------------");
        end
    endtask

    initial begin
        $display("===== IEEE 754 Floating Point Divider Test =====");
        $display("Testing floating point divider implementation");
        
        // Test 1: 4.0 / 2.0 = 2.0
        a = 32'b01000000100000000000000000000000; // 4.0
        b = 32'b01000000000000000000000000000000; // 2.0
        #10;
        display_test(a, b);
        verify_result(32'b01000000000000000000000000000000, 0, 0, 0); // 2.0

        // Test 2: -6.0 / 3.0 = -2.0
        a = 32'b11000000110000000000000000000000; // -6.0
        b = 32'b01000000010000000000000000000000; // 3.0
        #10;
        display_test(a, b);
        verify_result(32'b11000000000000000000000000000000, 0, 0, 0); // -2.0

        // Test 3: 5.0 / 0.0 = +Inf
        a = 32'b01000000101000000000000000000000; // 5.0
        b = 32'b00000000000000000000000000000000; // +0.0
        #10;
        display_test(a, b);
        verify_result(32'b01111111100000000000000000000000, 0, 1, 0); // +Inf

        // Test 4: 0.0 / 0.0 = NaN (any NaN mantissa is acceptable)
        a = 32'b00000000000000000000000000000000; // +0.0
        b = 32'b00000000000000000000000000000000; // +0.0
        #10;
        display_test(a, b);
        verify_result(32'b01111111110000000000000000000000, 1, 0, 0); // NaN

        // Test 5: Inf / Inf = NaN (any NaN mantissa is acceptable)
        a = 32'b01111111100000000000000000000000; // +Inf
        b = 32'b01111111100000000000000000000000; // +Inf
        #10;
        display_test(a, b);
        verify_result(32'b01111111110000000000000000000000, 1, 0, 0); // NaN

        // Test 6: Denormal / 2.0 = smaller denormal
        a = 32'b00000000010000000000000000000000; // ~1.4e-45
        b = 32'b01000000000000000000000000000000; // 2.0
        #10;
        display_test(a, b);
        verify_result(32'b00000000001000000000000000000000, 0, 0, 1); // ~7e-46

        // Test 7: Max normal / min normal = Inf (overflow)
        a = 32'b01111111011111111111111111111111; // Max normal
        b = 32'b00000000100000000000000000000000; // Min normal
        #10;
        display_test(a, b);
        verify_result(32'b01111111100000000000000000000000, 0, 1, 0); // +Inf

        // Test 8: NaN / 2.0 = NaN (any NaN mantissa is acceptable)
        a = 32'b01111111110000000000000000000000; // NaN
        b = 32'b01000000000000000000000000000000; // 2.0
        #10;
        display_test(a, b);
        verify_result(32'b01111111110000000000000000000000, 1, 0, 0); // NaN

        // Test 9: 2.0 / NaN = NaN (any NaN mantissa is acceptable)
        a = 32'b01000000000000000000000000000000; // 2.0
        b = 32'b01111111110000000000000000000000; // NaN
        #10;
        display_test(a, b);
        verify_result(32'b01111111110000000000000000000000, 1, 0, 0); // NaN

        // Test 10: Min normal / max normal = denormal (underflow)
        a = 32'b00000000100000000000000000000000; // Min normal
        b = 32'b01111111011111111111111111111111; // Max normal
        #10;
        display_test(a, b);
        verify_result(32'b00000000000000000000000000000001, 0, 0, 1); // Small denormal

        $display("\n===== Test Complete =====");
        $finish;
    end

endmodule