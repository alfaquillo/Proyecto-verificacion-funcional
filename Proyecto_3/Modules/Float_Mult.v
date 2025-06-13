module float_multiplier (
    input sign_a,
    input sign_b,
    input [7:0] exp_a,
    input [7:0] exp_b,
    input [23:0] mantissa_a,
    input [23:0] mantissa_b,
    output [47:0] product, // Resultado crudo de 48 bits
    output [7:0] final_exp
);
    // Descripción:
    // - Multiplica mantisas (24x24 bits)
    // - Suma exponentes (ajustando bias)
    // - Calcula signo resultante (XOR)
endmodule