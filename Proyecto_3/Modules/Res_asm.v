`timescale 1ns / 1ps

module res_asm(
    input sign,
    input [7:0] exponent,
    input [22:0] mantissa,
    input is_zero,
    input is_inf,
    input is_nan,
    input underflow,
    input overflow,
    output reg [31:0] result,
    output reg error
);
    always @(*) begin
        error = is_nan | overflow | underflow;
        
        if (is_nan) begin
            result = {1'b0, 8'hFF, 23'h400000}; // NaN canónico
        end
        else if (is_inf) begin
            result = {sign, 8'hFF, 23'b0}; // Infinito
        end
        else if (overflow) begin
            result = {sign, 8'hFF, 23'b0}; // Overflow -> Infinito
        end
        else if (is_zero || underflow) begin
            result = {sign, 8'b0, 23'b0}; // Cero
        end
        else begin
            result = {sign, exponent, mantissa}; // Número normal
        end
    end
endmodule