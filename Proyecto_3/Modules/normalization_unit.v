module normalization_unit (
    input [7:0] a_exp, b_exp,
    input [22:0] a_mant, b_mant,
    input a_denormal, b_denormal,
    output reg [23:0] norm_a_mant, norm_b_mant,
    output reg signed [9:0] exp_sum
);
    always @(*) begin
        // Normalization of mantissas (add implicit bit)
        norm_a_mant = a_denormal ? {1'b0, a_mant} : {1'b1, a_mant};
        norm_b_mant = b_denormal ? {1'b0, b_mant} : {1'b1, b_mant};
        
        // Calculate exponent sum with proper bias adjustment
        // For denormals, we treat them as having exponent = 1 - bias
        exp_sum = (a_denormal ? 8'd1 : a_exp) + (b_denormal ? 8'd1 : b_exp) - 8'd127;
    end
endmodule