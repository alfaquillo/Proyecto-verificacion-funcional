module mantissa_multiplier (
    input [23:0] norm_a_mant,
    input [23:0] norm_b_mant,
    output reg [47:0] product_mant,
    output reg product_msb
);
    always @(*) begin
        // Multiply mantissas (24 bits × 24 bits → 48 bits)
        product_mant = norm_a_mant * norm_b_mant;
        // Check if product is ≥ 2.0 (MSB set)
        product_msb = product_mant[47];
    end
endmodule