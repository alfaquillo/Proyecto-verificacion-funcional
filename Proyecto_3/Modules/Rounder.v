`timescale 1ns / 1ps

module rounder(
    input [23:0] mantissa_in,    // 24 bits (1 + 23)
    input guard, round, sticky,  // Bits de guarda
    input [7:0] exponent_in,
    output reg [22:0] rounded_mantissa,
    output reg [7:0] exponent_out
);
    always @(*) begin
        // Redondeo "round to nearest, ties to even"
        if (guard && (round || sticky || mantissa_in[0])) begin
            // Redondear hacia arriba
            if (mantissa_in[22:0] == 23'h7FFFFF) begin
                // Overflow en mantisa
                rounded_mantissa = 0;
                exponent_out = exponent_in + 1;
            end else begin
                rounded_mantissa = mantissa_in[22:0] + 1;
                exponent_out = exponent_in;
            end
        end else begin
            // No redondear
            exponent_out = exponent_in;
            rounded_mantissa = mantissa_in[22:0];
        end
        
        // Manejar overflow por redondeo
        if (exponent_out >= 8'hFF) begin
            exponent_out = 8'hFF;
            rounded_mantissa = 0;
        end
    end
endmodule