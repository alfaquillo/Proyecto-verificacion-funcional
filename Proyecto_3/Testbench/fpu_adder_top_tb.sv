`timescale 1ns / 1ps

module fpu_adder_top_tb;

    logic [31:0] a, b, result;
    logic error;
    logic underflow, overflow;
    logic [7:0] aligned_exp;
    logic [23:0] aligned_mantissa_a, aligned_mantissa_b;
    logic [24:0] sum_result;
    logic sum_sign;
    logic [22:0] normalized_mantissa;
    logic [7:0] normalized_exp;
    logic [22:0] rounded_mantissa;
    logic [7:0] final_exp;

    // DUT
    fpu_adder_top dut (
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .underflow(underflow),
        .overflow(overflow),
        .aligned_exp(aligned_exp),
        .aligned_mantissa_a(aligned_mantissa_a),
        .aligned_mantissa_b(aligned_mantissa_b),
        .sum_result(sum_result),
        .sum_sign(sum_sign),
        .normalized_mantissa(normalized_mantissa),
        .normalized_exp(normalized_exp),
        .rounded_mantissa(rounded_mantissa),
        .final_exp(final_exp)
    );

    // Tarea para mostrar señales internas
    task mostrar_estado();
    begin
        $display("  aligned_exp         = %0d (0x%02h)", aligned_exp, aligned_exp);
        $display("  aligned_mantissa_a  = 0x%06h", aligned_mantissa_a);
        $display("  aligned_mantissa_b  = 0x%06h", aligned_mantissa_b);
        $display("  sum_result          = 0x%07h", sum_result);
        $display("  sum_sign            = %b", sum_sign);
        $display("  normalized_exp      = %0d (0x%02h)", normalized_exp, normalized_exp);
        $display("  normalized_mantissa = 0x%06h", normalized_mantissa);
        $display("  rounded_mantissa    = 0x%06h", rounded_mantissa);
        $display("  final_exp           = %0d (0x%02h)", final_exp, final_exp);
        $display("  underflow           = %b", underflow);
        $display("  overflow            = %b", overflow);
        $display("  error               = %b", error);
        $display("");
    end
    endtask

    // Tarea para probar suma con operandos y valor esperado
    task prueba(string nombre, logic [31:0] op_a, logic [31:0] op_b, logic [31:0] esperado);
    real a_real, b_real, res_real, esp_real;
    begin
        a = op_a;
        b = op_b;
        #5;  // Esperar propagación
        a_real = $bitstoreal({1'b0, a[30:0], 29'd0}) / (1 << 29); // aproximado
        b_real = $bitstoreal({1'b0, b[30:0], 29'd0}) / (1 << 29);
        res_real = $bitstoreal({1'b0, result[30:0], 29'd0}) / (1 << 29);
        esp_real = $bitstoreal({1'b0, esperado[30:0], 29'd0}) / (1 << 29);

        $display("==== %s ====", nombre);
        $display("  A = 0x%08h (%f)", a, $bitstoshortreal(a));
        $display("  B = 0x%08h (%f)", b, $bitstoshortreal(b));
        $display("  Resultado = 0x%08h (%f)", result, $bitstoshortreal(result));
        $display("  Esperado  = 0x%08h (%f)", esperado, $bitstoshortreal(esperado));
        mostrar_estado();
    end
    endtask

    initial begin
        $display("Comenzando pruebas con señales internas...\n");

        // 1.0 + 1.0 = 2.0
        prueba("1.0 + 1.0", 32'h3F800000, 32'h3F800000, 32'h40000000);

        // 0.5 + 0.25 = 0.75
        prueba("0.5 + 0.25", 32'h3F000000, 32'h3E800000, 32'h3F400000);

        // 3.5 + (-2.5) = 1.0
        prueba("3.5 + -2.5", 32'h40600000, 32'hC0200000, 32'h3F800000);

        // Inf + -Inf = NaN esperado (error)
        prueba("Inf + -Inf", 32'h7F800000, 32'hFF800000, 32'h7FC00000);
        // Inf + número = Inf
        prueba("Inf + 1.0", 32'h7F800000, 32'h3F800000, 32'h7F800000);
        
        // NaN + cualquier = NaN
        prueba("NaN + 1.0", 32'h7FC00000, 32'h3F800000, 32'h7FC00000);
        
        // Overflow explícito
        prueba("MaxFloat + MaxFloat", 32'h7F7FFFFF, 32'h7F7FFFFF, 32'h7F800000);
                
        $finish;
    end

endmodule
