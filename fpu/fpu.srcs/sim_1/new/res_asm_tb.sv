`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2025 08:24:45 AM
// Design Name: 
// Module Name: res_asm_tb
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
`timescale 1ns / 1ps

module res_asm_tb;
    reg sign;
    reg [7:0] exponent;
    reg [22:0] mantissa;
    reg is_zero, is_inf, is_nan, underflow, overflow;
    wire [31:0] result;
    wire error;

    res_asm uut (
        .sign(sign),
        .exponent(exponent),
        .mantissa(mantissa),
        .is_zero(is_zero),
        .is_inf(is_inf),
        .is_nan(is_nan),
        .underflow(underflow),
        .overflow(overflow),
        .result(result),
        .error(error)
    );

    initial begin
        $display("Iniciando simulacion del ensamblador\n");

        // Test 1: Número normal
        apply_inputs(0, 8'h80, 23'h400000, 0, 0, 0, 0, 0, 32'h40400000, 0, "Test 1: Normal");

        // Test 2: Cero
        apply_inputs(1, 8'h00, 23'h123456, 1, 0, 0, 0, 0, 32'h80000000, 0, "Test 2: Cero");

        // Test 3: Infinito
        apply_inputs(0, 8'hAA, 23'h654321, 0, 1, 0, 0, 0, 32'h7F800000, 0, "Test 3: Infinito");

        // Test 4: NaN
        apply_inputs(0, 8'hFF, 23'h000001, 0, 0, 1, 0, 0, 32'h7FFFFFFF, 1, "Test 4: NaN");

        // Test 5: Underflow
        apply_inputs(1, 8'h01, 23'h000001, 0, 0, 0, 1, 0, 32'h80000000, 1, "Test 5: Underflow");

        // Test 6: Overflow
        apply_inputs(1, 8'hFE, 23'h7FFFFF, 0, 0, 0, 0, 1, 32'hFF800000, 1, "Test 6: Overflow");

        $display("\nSimulacion completada");
        #10 $finish;
    end

    task apply_inputs(
        input s,
        input [7:0] exp_in,
        input [22:0] man_in,
        input z, i, n, u, o,
        input [31:0] exp_result,
        input exp_error,
        input [255:0] name
    );
    begin
        sign = s;
        exponent = exp_in;
        mantissa = man_in;
        is_zero = z;
        is_inf = i;
        is_nan = n;
        underflow = u;
        overflow = o;

        #1; // Esperar propagación combinacional
        $display("%s", name);
        $display("  Result: %h (Expected: %h)", result, exp_result);
        $display("  Error:  %b (Expected: %b)", error, exp_error);
        if (result !== exp_result || error !== exp_error)
            $display("  [ERROR] Resultados no coinciden!\n");
        else
            $display("  [OK] Resultados correctos\n");
    end
    endtask
endmodule

