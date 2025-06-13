`timescale 1ns / 1ps

module mantissa_adder(
    input sign_a,
    input sign_b,
    input [23:0] mantissa_a,
    input [23:0] mantissa_b,
    input [7:0] exponent_in,  // Exponente alineado agregado
    input is_inf_a,
    input is_inf_b,
    input is_nan_a,
    input is_nan_b,
    input is_invalid_in,
    output reg [24:0] sum_result,
    output reg result_sign,
    output reg is_invalid_out,
    output reg overflow_flag  // Señal de overflow
);
    reg [24:0] operand_a, operand_b;
    reg [25:0] sum;
    
    always @(*) begin
        // Valores por defecto
        sum_result = 0;
        result_sign = 0;
        is_invalid_out = 0;
        overflow_flag = 0;
        
        // Casos especiales tienen prioridad
        if (is_nan_a || is_nan_b || is_invalid_in) begin
            is_invalid_out = 1;
        end
        else if (is_inf_a && is_inf_b) begin
            is_invalid_out = (sign_a ^ sign_b);
            result_sign = sign_a;
        end
        else if (is_inf_a) begin
            result_sign = sign_a;
        end
        else if (is_inf_b) begin
            result_sign = sign_b;
        end
        // Operaciones normales
        else begin
            operand_a = {1'b0, mantissa_a};
            operand_b = {1'b0, mantissa_b};
            
            if (sign_a == sign_b) begin
                // Suma con mismo signo
                sum = operand_a + operand_b;
                result_sign = sign_a;
                
                // Detección de overflow
                if (sum[25]) begin
                    overflow_flag = (exponent_in == 8'hFE); // Overflow si exp está a un paso del máximo
                    sum_result = {1'b1, sum[25:2]}; // Shift right
                end else begin
                    sum_result = sum[24:0];
                end
            end else begin
                // Resta con signos diferentes
                if (operand_a > operand_b) begin
                    sum_result = operand_a - operand_b;
                    result_sign = sign_a;
                end else if (operand_b > operand_a) begin
                    sum_result = operand_b - operand_a;
                    result_sign = sign_b;
                end else begin
                    // Iguales pero signos opuestos -> cero
                    sum_result = 0;
                    result_sign = 0;
                end
            end
        end
    end
endmodule