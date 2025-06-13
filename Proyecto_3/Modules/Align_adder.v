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
    output reg is_invalid
);
    reg [7:0] exp_diff;
    
    always @(*) begin
        
        is_invalid = 0;
        
        // Caso NaN tiene prioridad
        if (is_nan_a || is_nan_b) begin
            final_exp = 8'hFF;
            aligned_mantissa_a = {1'b1, 22'b0, |mantissa_a[21:0]};
            aligned_mantissa_b = {1'b1, 22'b0, |mantissa_b[21:0]};
            is_invalid = 1;
        end
        // Caso Inf ± Inf con signos opuestos
        else if ((is_inf_a && is_inf_b) && (mantissa_a[23] ^ mantissa_b[23])) begin
            final_exp = 8'hFF;
            aligned_mantissa_a = {1'b0, 23'b0};  // Forzar NaN en res_asm
            aligned_mantissa_b = {1'b0, 23'b0};
            is_invalid = 1;
        end
        
        else if (is_zero_a && is_zero_b) begin
            final_exp = 0;
            aligned_mantissa_a = 0;
            aligned_mantissa_b = 0;
        end 
        else begin
            if (exp_a > exp_b) begin
                final_exp = exp_a;
                exp_diff = exp_a - exp_b;
                aligned_mantissa_a = mantissa_a;
                aligned_mantissa_b = mantissa_b >> exp_diff;
            end 
            else begin
                final_exp = exp_b;
                exp_diff = exp_b - exp_a;
                aligned_mantissa_b = mantissa_b;
                aligned_mantissa_a = mantissa_a >> exp_diff;
            end
        end
    end
endmodule