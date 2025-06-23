`timescale 1ns / 1ps

module float_multiplier (
    input [31:0] a,
    input [31:0] b,
    output [31:0] result,
    output error,          // Error (NaN, Inf*0, etc.)
    output overflow,       // Overflow (resultado → Inf)
    output underflow       // Underflow (resultado → 0 o denormal)
);
    // Internal signals
    wire a_zero, b_zero, a_inf, b_inf, a_nan, b_nan, a_denormal, b_denormal, res_sign;
    wire [23:0] norm_a_mant, norm_b_mant;
    wire [9:0] exp_sum;
    wire [47:0] product_mant;
    wire product_msb;
    wire [31:0] normalized_result;  
    wire [31:0] special_result;
    wire is_special_case;
    
    // Registers for outputs
    reg [31:0] result_reg;
    reg error_reg;
    reg overflow_reg;
    reg underflow_reg;
    
    // Overflow/underflow detection
    wire exp_overflow;
    wire exp_underflow;
    
    assign exp_overflow = (exp_sum >= 255);  // Exceso de exponente
    assign exp_underflow = (exp_sum <= 0);   // Subflujo de exponente

    // Module instantiations
    special_cases_detector detector (
        .a(a),
        .b(b),
        .a_zero(a_zero),
        .b_zero(b_zero),
        .a_inf(a_inf),
        .b_inf(b_inf),
        .a_nan(a_nan),
        .b_nan(b_nan),
        .a_denormal(a_denormal),
        .b_denormal(b_denormal),
        .res_sign(res_sign)
    );

    special_cases_handler handler (
        .a_nan(a_nan),
        .b_nan(b_nan),
        .a_zero(a_zero),
        .b_zero(b_zero),
        .a_inf(a_inf),
        .b_inf(b_inf),
        .res_sign(res_sign),
        .special_result(special_result),
        .is_special_case(is_special_case)
    );

    normalization_unit normalizer (
        .a_exp(a[30:23]),
        .b_exp(b[30:23]),
        .a_mant(a[22:0]),
        .b_mant(b[22:0]),
        .a_denormal(a_denormal),
        .b_denormal(b_denormal),
        .norm_a_mant(norm_a_mant),
        .norm_b_mant(norm_b_mant),
        .exp_sum(exp_sum)
    );

    mantissa_multiplier multiplier (
        .norm_a_mant(norm_a_mant),
        .norm_b_mant(norm_b_mant),
        .product_mant(product_mant),
        .product_msb(product_msb)
    );

    result_normalizer result_norm (
        .exp_sum_in(exp_sum),
        .product_mant_in(product_mant),
        .product_msb(product_msb),
        .res_sign(res_sign),
        .normalized_result(normalized_result)
    );

    // Combinational logic for outputs
    always @* begin
        // Error: NaN o Inf * 0
        error_reg = (a_nan || b_nan) || ((a_inf && b_zero) || (a_zero && b_inf));
        
        // Overflow: exponente ≥ 255 o resultado normalizado es Inf
        overflow_reg = exp_overflow || (normalized_result[30:23] == 8'hFF && !error_reg);
        
        // Underflow: exponente ≤ 0 o resultado normalizado es cero/denormal
        underflow_reg = exp_underflow || (normalized_result[30:23] == 8'h00 && !error_reg && normalized_result[22:0] != 23'd0);
        
        // Resultado final
        result_reg = is_special_case ? special_result : normalized_result;
    end
    
    // Continuous assignments to outputs
    assign result = result_reg;
    assign error = error_reg;
    assign overflow = overflow_reg;
    assign underflow = underflow_reg;
    
endmodule