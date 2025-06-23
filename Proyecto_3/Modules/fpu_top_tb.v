`timescale 1ns / 1ps

module fpu_top_tb;

    // Inputs
    reg [1:0] op;
    reg [31:0] a, b;
    
    // Outputs
    wire [31:0] result;
    wire error, underflow, overflow;

    // Instantiate the FPU
    fpu_top uut (
        .op(op),
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .underflow(underflow),
        .overflow(overflow)
    );

    // Test cases
    initial begin
        // Open VCD dump file
        $dumpfile("fpu_top_tb.vcd");
        $dumpvars(0, fpu_top_tb);

        // Test 1: Suma (3.5 + 2.5 = 6.0)
        op = 2'b00;
        a = 32'h40600000;  // 3.5
        b = 32'h40200000;  // 2.5
        #10;

        // Test 2: Resta (5.0 - 1.5 = 3.5)
        op = 2'b01;
        a = 32'h40A00000;  // 5.0
        b = 32'h3FC00000;  // 1.5
        #10;

        // Test 3: Multiplicación (2.0 * 4.0 = 8.0)
        op = 2'b10;
        a = 32'h40000000;  // 2.0
        b = 32'h40800000;  // 4.0
        #10;

        // Test 4: División (9.0 / 3.0 = 3.0)
        op = 2'b11;
        a = 32'h41100000;  // 9.0
        b = 32'h40400000;  // 3.0
        #10;

        // Test 5: Error (División por cero)
        op = 2'b11;
        a = 32'h40000000;  // 2.0
        b = 32'h00000000;  // 0.0
        #10;

        // Test 6: Overflow (1e38 * 1e38 = Inf)
        op = 2'b10;
        a = 32'h7F7FFFFF;  // ~3.4e38 (MAX_FLOAT)
        b = 32'h7F7FFFFF;
        #10;

        $display("Test completado.");
        $finish;
    end

endmodule