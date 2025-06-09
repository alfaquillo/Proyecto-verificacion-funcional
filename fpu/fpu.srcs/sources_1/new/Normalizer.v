`timescale 1ns / 1ps

module normalizer(
    input [24:0] mantissa,        // Mantisa de entrada (1 bit overflow + 24 bits)
    input [7:0] exponent,         // Exponente actual
    output reg [22:0] normalized_mantissa,  // Mantisa normalizada (23 bits)
    output reg [7:0] normalized_exp,        // Exponente ajustado
    output reg underflow,                   // Flag de underflow
    output reg overflow,                    // Flag de overflow
    output reg inexact                      // Flag de precisión perdida
);
    always @(*) begin
        // Inicialización
        underflow = 1'b0;
        overflow = 1'b0;
        inexact = 1'b0;
        normalized_mantissa = 23'b0;
        normalized_exp = exponent;
        
        // Caso especial: mantisa cero
        if (mantissa == 25'b0) begin
            normalized_exp = 8'b0;
        end
        else begin
            // Caso 1: Overflow (bit 24 set)
            if (mantissa[24]) begin
                normalized_mantissa = mantissa[23:1];  // Desplazar derecha 1 bit
                inexact = mantissa[0];                // Bit perdido
                
                if (exponent == 8'hFF) begin
                    overflow = 1'b1;
                    normalized_exp = 8'hFF;
                    normalized_mantissa = 23'h7FFFFF; // Máximo valor mantisa
                end else begin
                    normalized_exp = exponent + 1;
                end
            end
            // Caso 2: Bit 23 set (ya normalizado)
            else if (mantissa[23]) begin
                normalized_mantissa = mantissa[22:0];
            end
            // Caso 3: Necesita normalización
            else begin
                // Priority encoder mejorado
                if (mantissa[22]) begin
                    normalized_mantissa = {mantissa[21:0], 1'b0};
                    if (exponent > 1) begin
                        normalized_exp = exponent - 1;
                    end else begin
                        underflow = 1'b1;
                        normalized_exp = 8'b0;
                    end
                    inexact = |mantissa[0:0];
                end
                else if (mantissa[21]) begin
                    normalized_mantissa = {mantissa[20:0], 2'b0};
                    if (exponent > 2) begin
                        normalized_exp = exponent - 2;
                    end else begin
                        underflow = 1'b1;
                        normalized_exp = 8'b0;
                    end
                    inexact = |mantissa[1:0];
                end
                // Continuar con los demás casos...
                else if (mantissa[20]) begin
                    normalized_mantissa = {mantissa[19:0], 3'b0};
                    if (exponent > 3) begin
                        normalized_exp = exponent - 3;
                    end else begin
                        underflow = 1'b1;
                        normalized_exp = 8'b0;
                    end
                    inexact = |mantissa[2:0];
                end
                else begin
                    // Para números muy pequeños, forzar a cero
                    underflow = 1'b1;
                    inexact = 1'b1;
                    normalized_exp = 8'b0;
                    normalized_mantissa = 23'b0;
                end
            end
            
            // Overflow final check
            if (normalized_exp >= 8'hFF && !overflow) begin
                overflow = 1'b1;
                normalized_exp = 8'hFF;
                normalized_mantissa = 23'h7FFFFF;
            end
        end
    end
endmodule