module result_normalizer (
    input signed [9:0] exp_sum_in,
    input [47:0] product_mant_in,
    input product_msb,
    input res_sign,
    output reg [31:0] normalized_result
);
    reg [47:0] product_mant;
    reg signed [9:0] exp_sum;
    integer shift_amount;

    always @(*) begin
        product_mant = product_mant_in;
        exp_sum = exp_sum_in;

        // Normalization: if MSB=1, the number is ≥2.0, shift right
        if (product_msb) begin
            product_mant = product_mant >> 1;
            exp_sum = exp_sum + 1;
        end

        // Handle overflow → Inf
        if (exp_sum >= 255) begin
            normalized_result = {res_sign, 8'hFF, 23'd0};
        end 
        // Handle underflow → denormal or zero
        else if (exp_sum <= 0) begin
            shift_amount = 1 - exp_sum;
            if (shift_amount < 48) begin
                product_mant = product_mant >> shift_amount;
                normalized_result = {res_sign, 8'd0, product_mant[45:23]};
            end else begin
                normalized_result = {res_sign, 8'd0, 23'd0};
            end
        end 
        // Normal case
        else begin
            normalized_result = {res_sign, exp_sum[7:0], product_mant[45:23]};
        end
    end
endmodule
