module tb_float_multiplier;

    reg [31:0] a, b;
    wire [31:0] result;

    // Instancia del módulo a probar (ahora modularizado)
    float_multiplier uut (
        .a(a),
        .b(b),
        .result(result)
    );

    // Tarea para mostrar en formato IEEE 754
    task display_binary;
        input [31:0] num;
        begin
            $display("Sign: %b  Exp: %b  Mantissa: %b", 
                     num[31], num[30:23], num[22:0]);
        end
    endtask

    // Tarea para mostrar caso de prueba
    task display_test;
        input [31:0] a_in;
        input [31:0] b_in;
        input [31:0] res;
        begin
            $display("Input A:");
            display_binary(a_in);
            $display("Input B:");
            display_binary(b_in);
            $display("Result:");
            display_binary(res);
            $display("----------------------------------------");
        end
    endtask

    // Tarea para verificar resultado
    task verify_result;
        input [31:0] expected;
        begin
            if (result === expected) begin
                $display("TEST PASSED");
            end else begin
                $display("TEST FAILED");
                $display("Expected:");
                display_binary(expected);
            end
            $display("----------------------------------------");
        end
    endtask

    initial begin
        $display("===== IEEE 754 Floating Point Multiplier Test =====");
        $display("Testing modularized version");
        $display("Format: Sign(1) | Exponent(8) | Mantissa(23)");

        // Test 1: 1.0 * 2.0 = 2.0
        a = 32'b00111111100000000000000000000000; // 1.0
        b = 32'b01000000000000000000000000000000; // 2.0
        #10;
        $display("\nTest 1: 1.0 * 2.0 = 2.0");
        display_test(a, b, result);
        verify_result(32'b01000000000000000000000000000000); // 2.0

        // Test 2: -1.5 * 0.5 = -0.75
        a = 32'b10111111110000000000000000000000; // -1.5
        b = 32'b00111111000000000000000000000000; // 0.5
        #10;
        $display("\nTest 2: -1.5 * 0.5 = -0.75");
        display_test(a, b, result);
        verify_result(32'b10111111010000000000000000000000); // -0.75

        // Test 3: Inf * 0 = NaN (debe tener mantisa no cero)
        a = 32'b01111111100000000000000000000000; // +Inf
        b = 32'b00000000000000000000000000000000; // +0
        #10;
        $display("\nTest 3: Inf * 0 = NaN");
        display_test(a, b, result);
        if (result[30:23] == 8'hFF && result[22:0] != 0) begin
            $display("TEST PASSED (NaN detected)");
        end else begin
            $display("TEST FAILED (Not a NaN)");
        end
        $display("----------------------------------------");

        // Test 4: Denormal * Denormal = 0
        a = 32'b00000000010000000000000000000000; // Subnormal ~1.4e-45
        b = 32'b00000000001000000000000000000000; // Subnormal ~7e-46
        #10;
        $display("\nTest 4: Denormal * Denormal = 0");
        display_test(a, b, result);
        verify_result(32'b00000000000000000000000000000000); // +0

        // Test 5: NaN * Number = NaN
        a = 32'b01111111110000000000000000000000; // NaN
        b = 32'b00111111100000000000000000000000; // 1.0
        #10;
        $display("\nTest 5: NaN * 1.0 = NaN");
        display_test(a, b, result);
        if (result[30:23] == 8'hFF && result[22:0] != 0) begin
            $display("TEST PASSED (NaN detected)");
        end else begin
            $display("TEST FAILED (Not a NaN)");
        end
        $display("----------------------------------------");

        // Test 6: Inf * Inf = Inf
        a = 32'b01111111100000000000000000000000; // +Inf
        b = 32'b01111111100000000000000000000000; // +Inf
        #10;
        $display("\nTest 6: Inf * Inf = Inf");
        display_test(a, b, result);
        verify_result(32'b01111111100000000000000000000000); // +Inf

        $display("\n===== Test Complete =====");
        $finish;
    end

endmodule