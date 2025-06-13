`timescale 1ns / 1ps

module rounder_tb;
    reg [26:0] add_result;
    reg [7:0] exponent_in;
    wire [22:0] rounded_mantissa;
    wire [7:0] exponent_out;
    wire inexact;

    rounder uut (
        .add_result(add_result),
        .exponent_in(exponent_in),
        .rounded_mantissa(rounded_mantissa),
        .exponent_out(exponent_out),
        .inexact(inexact)
    );

    initial begin
        $display("Iniciando simulacion del redondeador\n");

        // Test 1: Sin redondeo (G=0 R=0 S=0)
        add_result = {24'h400000, 3'b000}; // mantisa 0x400000 con bits GRS = 000
        exponent_in = 8'h7F;
        #10 check_results("Test 1: Sin redondeo", 23'h400000, 8'h7F, 0);

        // Test 2: Redondeo arriba (G=1 R=1 S=0)
        add_result = {24'h400000, 3'b110};
        exponent_in = 8'h7F;
        #10 check_results("Test 2: Redondeo arriba", 23'h400001, 8'h7F, 1);

        // Test 3: Empate redondea arriba (LSB=1, G=1 R=0 S=0)
        add_result = {24'h400001, 3'b100};
        exponent_in = 8'h7F;
        #10 check_results("Test 3: Empate redondea arriba", 23'h400002, 8'h7F, 1);

        // Test 4: Empate redondea igual (LSB=0, G=1 R=0 S=0)
        add_result = {24'h400000, 3'b100};
        exponent_in = 8'h7F;
        #10 check_results("Test 4: Empate redondea igual", 23'h400000, 8'h7F, 1);

        // Test 5: Overflow por redondeo (mantisa llena)
        add_result = {24'h7FFFFF, 3'b111};
        exponent_in = 8'h7F;
        #10 check_results("Test 5: Overflow por redondeo", 23'h400000, 8'h80, 1);

        $display("\nSimulacion completada");
        #10 $finish;
    end

    task check_results(
        input string test_name,
        input [22:0] exp_mantissa,
        input [7:0] exp_exp,
        input exp_inexact
    );
    begin
        $display("%s", test_name);
        $display("  Mantisa: %h (Expected: %h)", rounded_mantissa, exp_mantissa);
        $display("  Exp:     %h (Expected: %h)", exponent_out, exp_exp);
        $display("  Inexact: %b (Expected: %b)", inexact, exp_inexact);

        if (rounded_mantissa !== exp_mantissa ||
            exponent_out !== exp_exp ||
            inexact !== exp_inexact) begin
            $display("  [ERROR] Resultados no coinciden!");
        end else begin
            $display("  [OK] Resultados correctos");
        end
        $display("");
    end
    endtask
endmodule