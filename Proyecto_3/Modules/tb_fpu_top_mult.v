`timescale 1ns / 1ps

module tb_fpu_top_mult();

    // Parámetros
    parameter CLK_PERIOD = 10;

    // Señales
    reg [1:0] op;
    reg [31:0] a, b;
    wire [31:0] result;
    wire error, underflow, overflow;

    // Función para convertir float (32 bits) a real
    function real fp32_to_real;
        input [31:0] fp32;
        reg [63:0] fp64;
        begin
            fp64 = {32'd0, fp32};  // Workaround para Icarus Verilog
            fp32_to_real = $bitstoreal(fp64);
        end
    endfunction

    // Variables reales
    real real_a, real_b, real_result;
    always @(*) begin
        real_a = fp32_to_real(a);
        real_b = fp32_to_real(b);
        real_result = fp32_to_real(result);
    end

    // Instancia del FPU
    fpu_top uut (
        .op(op),
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .underflow(underflow),
        .overflow(overflow)
    );

    // Generación de reloj
    reg clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    // Test cases
    initial begin
        op = 2'b10;  // Modo multiplicación

        // Caso 1: 3.0 * 2.0
        a = 32'h40400000; // 3.0
        b = 32'h40000000; // 2.0
        #20;
        $display("Caso 1: 3.0 * 2.0 = %h (%.2f)", result, real_result);
        $display("Error: %b, Overflow: %b, Underflow: %b", error, overflow, underflow);

        // Caso 2: Overflow (1e38 * 1e38 → Inf)
        a = 32'h7F800000; // Infinito
        b = 32'h7F800000; // Infinito
        #20;
        $display("Caso 2: Inf * Inf = %h (%.2f)", result, real_result);
        $display("Error: %b, Overflow: %b, Underflow: %b", error, overflow, underflow);

        // Caso 3: Underflow (1e-38 * 1e-38 → 0 o denormal)
        a = 32'h00800000; // ~1e-38 (menor número normalizado)
        b = 32'h00800000; // ~1e-38
        #20;
        $display("Caso 3: 1e-38 * 1e-38 = %h (%.2e)", result, real_result);
        $display("Error: %b, Overflow: %b, Underflow: %b", error, overflow, underflow);

        // Caso 4: NaN * 5.0 → NaN
        a = 32'hFFC00000; // NaN
        b = 32'h40A00000; // 5.0
        #20;
        $display("Caso 4: NaN * 5.0 = %h (NaN)", result);
        $display("Error: %b, Overflow: %b, Underflow: %b", error, overflow, underflow);

        // Caso 5: Inf * 0 → NaN (error)
        a = 32'h7F800000; // Inf
        b = 32'h00000000; // 0
        #20;
        $display("Caso 5: Inf * 0 = %h (NaN)", result);
        $display("Error: %b, Overflow: %b, Underflow: %b", error, overflow, underflow);

        // Caso 6: Denormal * 2.0 (manejo de denormales)
        a = 32'h00000001; // Denormal (≈1.4e-45)
        b = 32'h40000000; // 2.0
        #20;
        $display("Caso 6: Denormal * 2.0 = %h (%.2e)", result, real_result);
        $display("Error: %b, Overflow: %b, Underflow: %b", error, overflow, underflow);

        // Finalizar simulación
        $display("---------------------");
        $display("Simulación completada.");
        $finish;
    end

endmodule