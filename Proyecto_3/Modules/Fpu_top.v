`timescale 1ns / 1ps

module fpu_top(
    input [1:0] op,       // 00:suma, 01:resta, 10:mult, 11:div
    input [31:0] a,
    input [31:0] b,
    output [31:0] result,
    output error,
    output underflow,
    output overflow
);

    //------------------------------------------
    // Unidades de cálculo completamente autónomas
    //------------------------------------------
    wire [31:0] adder_res, mult_res, div_res;
    wire adder_err, mult_err, div_err;
    wire adder_ovf, adder_udf;
    wire mult_ovf, mult_udf;
    wire div_ovf, div_udf;

    // Sumador/Restador 
    fpu_adder_top adder(
        .a(a),
        .b(b),
        .substract(op[0]),  // Bit 0: 0=suma, 1=resta
        .result(adder_res),
        .error(adder_err),
        .underflow(adder_udf),
        .overflow(adder_ovf)
    );
   
    // Multiplicador
    float_multiplier multiplier(
        .a(a),
        .b(b),
        .result(mult_res),
        .error(mult_err),
        .overflow(mult_ovf),
        .underflow(mult_udf)
    );

    // Divisor
    float_divider divider(
        .a(a),
        .b(b),
        .result(div_res),
        .error(div_err),
        .overflow(div_ovf),
        .underflow(div_udf)
    );

    // Selector de resultados
    fpu_mux selector(
        .op(op),
        .adder_res(adder_res),
        .adder_err(adder_err),
        .adder_ovf(adder_ovf),
        .adder_udf(adder_udf),
        .mult_res(mult_res),
        .mult_err(mult_err),
        .mult_ovf(mult_ovf),
        .mult_udf(mult_udf),
        .div_res(div_res),
        .div_err(div_err),
        .div_ovf(div_ovf),
        .div_udf(div_udf),
        .result(result),
        .error(error),
        .overflow(overflow),
        .underflow(underflow)
    );

endmodule