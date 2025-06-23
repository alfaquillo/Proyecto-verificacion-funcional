module float_divider (
    input [31:0] a,    // dividendo
    input [31:0] b,    // divisor
    output reg [31:0] result,
    output reg error,          // Error (NaN, Inf/Inf, 0/0, etc.)
    output reg overflow,       // Overflow (resultado → Inf)
    output reg underflow       // Underflow (resultado → 0 o denormal)
);
    // Internal signals
    wire a_zero, b_zero, a_inf, b_inf, a_nan, b_nan, a_denormal, b_denormal, res_sign;
    wire [23:0] norm_a_mant, norm_b_mant;
    wire signed [9:0] exp_diff;
    wire [23:0] quotient_mant;
    wire [31:0] normalized_result;  
    wire [31:0] special_result;
    wire is_special_case;

    // Detección de overflow/underflow
    wire exp_overflow  = (exp_diff >= 255);  // Exceso de exponente
    wire exp_underflow = (exp_diff <= -127); // Subflujo de exponente

    // Module instantiations
    special_cases_detector_div detector (
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

    special_cases_handler_div handler (
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

    normalization_unit_div normalizer (
        .a_exp(a[30:23]),
        .b_exp(b[30:23]),
        .a_mant(a[22:0]),
        .b_mant(b[22:0]),
        .a_denormal(a_denormal),
        .b_denormal(b_denormal),
        .norm_a_mant(norm_a_mant),
        .norm_b_mant(norm_b_mant),
        .exp_diff(exp_diff)
    );

    mantissa_divider divider (
        .norm_a_mant(norm_a_mant),
        .norm_b_mant(norm_b_mant),
        .quotient_mant(quotient_mant)
    );

    result_normalizer_div result_norm (
        .exp_diff_in(exp_diff),
        .quotient_mant_in(quotient_mant),
        .res_sign(res_sign),
        .normalized_result(normalized_result)
    );

    // Lógica de error, overflow y underflow
    always @(*) begin
        // Error: NaN o 0/0 o Inf/Inf
        error = (a_nan || b_nan) || ((a_zero && b_zero) || (a_inf && b_inf));
        
        // Overflow: exponente ≥ 255 o resultado normalizado es Inf
        overflow = exp_overflow || (normalized_result[30:23] == 8'hFF && !error);
        
        // Underflow: exponente ≤ 0 o resultado normalizado es cero/denormal
        underflow = exp_underflow || (normalized_result[30:23] == 8'h00 && !error && normalized_result[22:0] != 23'd0);
        
        // Resultado final
        if (is_special_case) begin
            result = special_result;
        end else begin
            result = normalized_result;
        end
    end
endmodule