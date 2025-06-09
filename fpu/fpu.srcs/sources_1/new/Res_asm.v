module result_assembler (
    input sign,
    input [7:0] exponent,
    input [22:0] mantissa,
    input is_zero,
    input is_inf,
    input is_nan,
    input underflow,
    input overflow,
    output [31:0] result,
    output error
);
    // Descripción:
    // - Combina signo, exponente y mantisa
    // - Maneja casos especiales (inf, NaN)
    // - Genera flags de error
endmodule