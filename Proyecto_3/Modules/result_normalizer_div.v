module result_normalizer_div (
    input signed [9:0] exp_diff_in,
    input [23:0] quotient_mant_in,
    input res_sign,
    output reg [31:0] normalized_result
);
    reg [23:0] quotient_mant;
    reg signed [9:0] exp_diff;
    integer shift_amount;

    always @(*) begin
        quotient_mant = quotient_mant_in;
        exp_diff = exp_diff_in;

        // Normalización: ajustar exponente y mantisa según sea necesario
        
        // Caso 1: Overflow → Infinito
        if (exp_diff >= 255) begin
            normalized_result = {res_sign, 8'hFF, 23'd0};
        end 
        // Caso 2: Underflow → Denormal o Cero
        else if (exp_diff <= -126) begin
            shift_amount = -126 - exp_diff;
            if (shift_amount < 24) begin
                quotient_mant = quotient_mant >> shift_amount;
                normalized_result = {res_sign, 8'd0, quotient_mant[22:0]};
            end else begin
                normalized_result = {res_sign, 8'd0, 23'd0}; // Cero
            end
        end 
        // Caso 3: Normal
        else begin
            // Ajustar para el bit implícito
            if (quotient_mant[23]) begin
                quotient_mant = quotient_mant >> 1;
                exp_diff = exp_diff + 1;
            end
            normalized_result = {res_sign, exp_diff[7:0], quotient_mant[22:0]};
        end
    end
endmodule