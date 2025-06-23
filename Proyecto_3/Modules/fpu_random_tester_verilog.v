`timescale 1ns / 1ps

module fpu_random_tester;

    parameter NUM_TESTS_PER_OP = 100;
    parameter SEED = 42;

    reg [1:0] op;
    reg [31:0] a, b;
    wire [31:0] result;
    wire error, underflow, overflow;

    integer i;
    integer add_errors, sub_errors, mult_errors, div_errors, total_tests;

    // FPU bajo prueba
    fpu_top uut (
        .op(op),
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .underflow(underflow),
        .overflow(overflow)
    );

    // === Conversión IEEE 754 a real ===
    function real ieee754_to_real;
        input [31:0] in;
        reg sign;
        reg [7:0] exponent;
        reg [22:0] mantissa;
        real fraction;
        integer i;
        begin
            sign = in[31];
            exponent = in[30:23];
            mantissa = in[22:0];
            fraction = 0.0;

            if (exponent == 8'hFF) begin
                if (mantissa == 0) ieee754_to_real = sign ? -1.0e38 : 1.0e38; // Inf aproximado
                else ieee754_to_real = 0.0 / 0.0; // NaN
            end else if (exponent == 0) begin
                for (i = 0; i < 23; i = i + 1)
                    if (mantissa[i]) fraction = fraction + (1.0 / (1 << (23 - i)));
                ieee754_to_real = (sign ? -1 : 1) * (fraction / (1 << 126));
            end else begin
                fraction = 1.0;
                for (i = 0; i < 23; i = i + 1)
                    if (mantissa[i]) fraction = fraction + (1.0 / (1 << (23 - i)));
                ieee754_to_real = (sign ? -1 : 1) * fraction * (2.0 ** (exponent - 127));
            end
        end
    endfunction

    // === Generador aleatorio de float IEEE 754 ===
    function [31:0] random_float;
        input integer special_chance;
        reg [31:0] val;
        integer rand_val, sel;
        begin
            rand_val = $random % 100;
            if (rand_val < 0) rand_val = -rand_val;
            if (rand_val < special_chance) begin
                sel = $random % 4;
                case (sel)
                    0: val = 32'h7F800000; // +Inf
                    1: val = 32'hFF800000; // -Inf
                    2: val = 32'h7FC00000; // NaN
                    3: val = 32'h00000001; // Denormal
                    default: val = 32'h3F800000; // 1.0
                endcase
            end else begin
                val = {$random, $random};
                if (val[30:23] == 8'hFF) val[30:23] = 8'hFE;
            end
            random_float = val;
        end
    endfunction

    // === Verificador ===
    task verify_result;
        input [31:0] a_bits, b_bits, actual;
        input [1:0] op_sel;
        input [8*12:1] op_name;  // Simulación de "string"
        inout integer error_counter;

        real ra, rb, expected, actual_r;
        real diff, tolerance;
        begin
            ra = ieee754_to_real(a_bits);
            rb = ieee754_to_real(b_bits);

            case (op_sel)
                2'b00: expected = ra + rb;
                2'b01: expected = ra - rb;
                2'b10: expected = ra * rb;
                2'b11: expected = (rb == 0.0) ? 0.0/0.0 : ra / rb;
            endcase

            actual_r = ieee754_to_real(actual);
            diff = actual_r - expected;
            tolerance = 1e-4;

            $display("=== %s Test %0d ===", op_name, total_tests + 1);
            $display("A = %.8f (%h)", ra, a_bits);
            $display("B = %.8f (%h)", rb, b_bits);
            $display("Expected = %.8f", expected);
            $display("Actual   = %.8f (%h)", actual_r, actual);

            if ((expected != expected) && (actual_r != actual_r)) begin
                $display("PASS: NaN detected");
            end else if ((expected == 1.0e38 && actual_r == 1.0e38) ||
                         (expected == -1.0e38 && actual_r == -1.0e38)) begin
                $display("PASS: Inf simulated");
            end else if ((expected == 0.0 && actual_r == 0.0) ||
                         (expected != 0.0 && diff / expected < tolerance && diff / expected > -tolerance)) begin
                $display("PASS");
            end else begin
                $display("FAIL");
                error_counter = error_counter + 1;
            end
            $display("");
        end
    endtask

    // === Ejecución ===
    task run_tests;
        input [1:0] op_code;
        input [8*12:1] op_name;
        inout integer error_counter;
        begin
            op = op_code;
            for (i = 0; i < NUM_TESTS_PER_OP; i = i + 1) begin
                a = random_float(5);
                b = random_float(5);
                #10;
                verify_result(a, b, result, op_code, op_name, error_counter);
                total_tests = total_tests + 1;
            end
        end
    endtask

    initial begin
        add_errors = 0; sub_errors = 0;
        mult_errors = 0; div_errors = 0;
        total_tests = 0;

        $display("=== Iniciando pruebas aleatorias FPU ===");

        run_tests(2'b00, "ADDITION     ", add_errors);
        run_tests(2'b01, "SUBTRACTION  ", sub_errors);
        run_tests(2'b10, "MULTIPLICATION", mult_errors);
        run_tests(2'b11, "DIVISION     ", div_errors);

        $display("=== Resumen ===");
        $display("Total pruebas: %0d", total_tests);
        $display("Errores suma : %0d", add_errors);
        $display("Errores resta: %0d", sub_errors);
        $display("Errores mult.: %0d", mult_errors);
        $display("Errores div. : %0d", div_errors);
        $display("Error total  : %.2f%%", 100.0 * 
            (add_errors + sub_errors + mult_errors + div_errors) / total_tests);

        $finish;
    end

endmodule
