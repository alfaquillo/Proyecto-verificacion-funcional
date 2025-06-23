module special_cases_handler (
    input a_nan, b_nan,
    input a_zero, b_zero,
    input a_inf, b_inf,
    input res_sign,
    output reg [31:0] special_result,
    output reg is_special_case
);
    always @(*) begin
        is_special_case = 1'b0;
        special_result = {res_sign, 31'd0};
        
        // NaN has highest priority

if (a_nan || b_nan) begin
    special_result = {res_sign, 8'hFF, 23'h1};  // NaN estándar
    is_special_case = 1'b1;
end
        // Inf * 0 → NaN
        else if ((a_zero && b_inf) || (a_inf && b_zero)) begin
            special_result = {res_sign, 8'hFF, 23'h1};
            is_special_case = 1'b1;
        end
        // Either operand is Inf → Inf
        else if (a_inf || b_inf) begin
            special_result = {res_sign, 8'hFF, 23'd0};
            is_special_case = 1'b1;
        end
        // Either operand is zero → zero
        else if (a_zero || b_zero) begin
            special_result = {res_sign, 8'd0, 23'd0};
            is_special_case = 1'b1;
        end
    end
endmodule