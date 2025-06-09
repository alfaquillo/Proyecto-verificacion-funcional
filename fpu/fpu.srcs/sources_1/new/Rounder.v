module rounder (
    input [47:0] mult_result, // Para multiplicación
    input [24:0] add_result,  // Para suma
    input operation, // 0: suma, 1: mult
    input [7:0] exponent_in,
    output [22:0] rounded_mantissa,
    output [7:0] exponent_out
);
    // Descripción:
    // - Implementa redondeo IEEE 754 (modo round-to-nearest-even)
    // - Ajusta exponente si hay carry en la mantisa
endmodule