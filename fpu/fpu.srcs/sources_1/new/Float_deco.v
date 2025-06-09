module float_deco(
    input [31:0] num,
    output reg sign,
    output reg [7:0] exponent,
    output reg [23:0] mantissa,
    output reg is_zero,
    output reg is_inf,
    output reg is_nan
);
    always @(*) begin
        sign = num[31];
        exponent = num[30:23];
        mantissa = {1'b0, num[22:0]}; // Bit implícito inicialmente 0
        
        // Casos especiales
        is_zero = (exponent == 8'b0) && (num[22:0] == 23'b0);
        is_inf = (exponent == 8'hFF) && (num[22:0] == 23'b0);
        is_nan = (exponent == 8'hFF) && (num[22:0] != 23'b0);
        
        // Bit implícito
        mantissa[23] = (exponent != 8'b0 && !is_inf && !is_nan);
    end
endmodule
