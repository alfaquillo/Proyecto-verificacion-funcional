`timescale 1ns / 1ps

module mantissa_adder(
    input sign_a,
    input sign_b,
    input [23:0] mantissa_a,
    input [23:0] mantissa_b,
    output reg [24:0] sum_result, // [24] overflow, [23:0] mantisa
    output reg result_sign
);
    reg [24:0] operand_a, operand_b;
    reg [24:0] sum;
    
    always @(*) begin
        // Extender a 25 bits (24 + signo)
        operand_a = {1'b0, mantissa_a};
        operand_b = {1'b0, mantissa_b};
        
        // Sumar o restar según los signos
        if (sign_a == sign_b) begin
            // Mismo signo: sumar magnitudes
            sum = operand_a + operand_b;
            result_sign = sign_a;
        end else begin
            // Signos diferentes: restar magnitudes
            if (operand_a > operand_b) begin
                sum = operand_a - operand_b;
                result_sign = sign_a;
            end else begin
                sum = operand_b - operand_a;
                result_sign = sign_b;
            end
        end
        
        sum_result = sum;
    end
endmodule