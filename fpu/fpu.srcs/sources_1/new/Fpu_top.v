`timescale 1ns / 1ps

module fpu_adder_top(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] result,
    output        error,
    // Salidas internas para debug
    output        underflow,
    output        overflow,
    output [7:0]  aligned_exp,
    output [23:0] aligned_mantissa_a,
    output [23:0] aligned_mantissa_b,
    output [24:0] sum_result,
    output        sum_sign,
    output [22:0] normalized_mantissa,
    output [7:0]  normalized_exp,
    output [22:0] rounded_mantissa,
    output [7:0]  final_exp
);

    // Señales internas
    wire sign_a, sign_b;
    wire [7:0] exp_a, exp_b;
    wire [23:0] mantissa_a, mantissa_b;
    wire is_zero_a, is_inf_a, is_nan_a;
    wire is_zero_b, is_inf_b, is_nan_b;
    wire is_invalid_align;
    wire is_invalid_add;
    wire adder_overflow;
    wire norm_overflow;
    
    // Señales para normalización
    wire [23:0] normalized_mant;
    wire [7:0]  pre_round_exp;
    wire        underflow_flag;
    
    // Conexión para debug
    assign normalized_mantissa = normalized_mant[22:0];
    assign normalized_exp = pre_round_exp;
    
    // Decodificadores
    float_deco decoder_a(
        .num(a),
        .sign(sign_a),
        .exponent(exp_a),
        .mantissa(mantissa_a),
        .is_zero(is_zero_a),
        .is_inf(is_inf_a),
        .is_nan(is_nan_a)
    );

    float_deco decoder_b(
        .num(b),
        .sign(sign_b),
        .exponent(exp_b),
        .mantissa(mantissa_b),
        .is_zero(is_zero_b),
        .is_inf(is_inf_b),
        .is_nan(is_nan_b)
    );

    // Alineamiento
    align_adder aligner(
        .exp_a(exp_a),
        .exp_b(exp_b),
        .mantissa_a(mantissa_a),
        .mantissa_b(mantissa_b),
        .is_zero_a(is_zero_a),
        .is_zero_b(is_zero_b),
        .is_inf_a(is_inf_a),
        .is_inf_b(is_inf_b),
        .is_nan_a(is_nan_a),
        .is_nan_b(is_nan_b),
        .is_invalid(is_invalid_align),
        .final_exp(aligned_exp),
        .aligned_mantissa_a(aligned_mantissa_a),
        .aligned_mantissa_b(aligned_mantissa_b)
    );

    // Suma de mantisas
    mantissa_adder adder(
        .sign_a(sign_a),
        .sign_b(sign_b),
        .mantissa_a(aligned_mantissa_a),
        .mantissa_b(aligned_mantissa_b),
        .exponent_in(aligned_exp),
        .is_inf_a(is_inf_a),
        .is_inf_b(is_inf_b),
        .is_nan_a(is_nan_a),
        .is_nan_b(is_nan_b),
        .is_invalid_in(is_invalid_align),
        .sum_result(sum_result),
        .result_sign(sum_sign),
        .is_invalid_out(is_invalid_add),
        .overflow_flag(adder_overflow)  
    );
    
    // Normalizador
    normalizer norm(
        .sum_result(sum_result),
        .exponent_in(aligned_exp),
        .overflow_flag(adder_overflow),
        .mantissa_out(normalized_mant),
        .exponent_out(pre_round_exp),
        .underflow(underflow_flag),
        .overflow(norm_overflow)
    );
    
    // Bits de guarda para redondeo
    wire guard = sum_result[1];
    wire round = sum_result[0];
    wire sticky = |sum_result[24:2];
    
    // Rounder
    rounder rounder(
        .mantissa_in(normalized_mant),
        .guard(guard),
        .round(round),
        .sticky(sticky),
        .exponent_in(pre_round_exp),
        .rounded_mantissa(rounded_mantissa),
        .exponent_out(final_exp)
    );
   
    assign underflow = underflow_flag && !(is_inf_a || is_inf_b || is_nan_a || is_nan_b);
    assign overflow = (norm_overflow || (final_exp == 8'hFF && !(is_inf_a || is_inf_b || is_nan_a || is_nan_b)));
    
    // Ensamblaje final
    res_asm assembler(
        .sign(sum_sign),
        .exponent(final_exp),
        .mantissa(rounded_mantissa),
        .is_zero(is_zero_a | is_zero_b),
        .is_inf(is_inf_a | is_inf_b),
        .is_nan(is_nan_a | is_nan_b | is_invalid_add),
        .underflow(underflow),
        .overflow(overflow),
        .result(result),
        .error(error)
    );
endmodule