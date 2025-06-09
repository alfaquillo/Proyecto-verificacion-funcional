`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: align_adder
//////////////////////////////////////////////////////////////////////////////////
module align_adder(
    input [7:0] exp_a,
    input [7:0] exp_b,
    input [23:0] mantissa_a,
    input [23:0] mantissa_b,
    input is_zero_a,
    input is_zero_b,
    input is_inf_a,
    input is_inf_b,
    input is_nan_a,
    input is_nan_b,
    output reg [7:0] final_exp,
    output reg [23:0] aligned_mantissa_a,
    output reg [23:0] aligned_mantissa_b,
    output reg [2:0] status // [0] underflow, [1] overflow, [2] inexact
);

    reg [7:0] exp_diff;
    reg [24:0] shifted;
    reg [23:0] mask;

    always @(*) begin
        // Inicialización
        final_exp = 0;
        aligned_mantissa_a = 0;
        aligned_mantissa_b = 0;
        status = 3'b000;

        // Casos especiales
        if (is_nan_a || is_nan_b) begin
            final_exp = 8'hFF;
            aligned_mantissa_a = 24'hFFFFFF; // NaN canónico
            aligned_mantissa_b = 24'hFFFFFF;
            status[2] = 1'b1;
        end else if (is_inf_a || is_inf_b) begin
            final_exp = 8'hFF;
            aligned_mantissa_a = is_inf_a ? 24'h800000 : 0;
            aligned_mantissa_b = is_inf_b ? 24'h800000 : 0;
        end else if (is_zero_a && is_zero_b) begin
            final_exp = 0;
            aligned_mantissa_a = 0;
            aligned_mantissa_b = 0;
        end else begin
            if (exp_a > exp_b) begin
                final_exp = exp_a;
                exp_diff = exp_a - exp_b;
                aligned_mantissa_a = mantissa_a;

                if (exp_diff >= 24) begin
                    aligned_mantissa_b = 0;
                    status[0] = 1'b1;
                    status[2] = |mantissa_b;
                end else begin
                    shifted = {1'b1, mantissa_b} >> exp_diff;
                    aligned_mantissa_b = shifted[23:0];

                    // Inexact flag usando máscara
                    mask = (1 << exp_diff) - 1;
                    if ((mantissa_b & mask) != 0) status[2] = 1'b1;
                end
            end else begin
                final_exp = exp_b;
                exp_diff = exp_b - exp_a;
                aligned_mantissa_b = mantissa_b;

                if (exp_diff >= 24) begin
                    aligned_mantissa_a = 0;
                    status[0] = 1'b1;
                    status[2] = |mantissa_a;
                end else begin
                    shifted = {1'b1, mantissa_a} >> exp_diff;
                    aligned_mantissa_a = shifted[23:0];

                    mask = (1 << exp_diff) - 1;
                    if ((mantissa_a & mask) != 0) status[2] = 1'b1;
                end
            end
        end
    end
endmodule

