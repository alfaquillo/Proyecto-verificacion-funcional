module mantissa_divider (
    input [23:0] norm_a_mant,  // dividendo normalizado (1.M)
    input [23:0] norm_b_mant,  // divisor normalizado (1.M)
    output reg [23:0] quotient_mant
);
    reg [47:0] remainder;
    reg [47:0] divisor;
    integer i;

    always @(*) begin
        remainder = {24'b0, norm_a_mant};
        divisor = {norm_b_mant, 24'b0};
        quotient_mant = 24'b0;

        for (i = 0; i < 24; i = i + 1) begin
            remainder = remainder << 1;
            if (remainder >= divisor) begin
                remainder = remainder - divisor;
                quotient_mant = {quotient_mant[22:0], 1'b1};
            end else begin
                quotient_mant = {quotient_mant[22:0], 1'b0};
            end
        end
    end
endmodule