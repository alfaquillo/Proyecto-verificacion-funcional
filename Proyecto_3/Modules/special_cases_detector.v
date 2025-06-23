module special_cases_detector (
    input [31:0] a,
    input [31:0] b,
    output a_zero,
    output b_zero,
    output a_inf,
    output b_inf,
    output a_nan,
    output b_nan,
    output a_denormal,
    output b_denormal,
    output res_sign
);
    wire a_sign = a[31];
    wire b_sign = b[31];
    wire [7:0] a_exp = a[30:23];
    wire [7:0] b_exp = b[30:23];
    wire [22:0] a_mant = a[22:0];
    wire [22:0] b_mant = b[22:0];

    assign a_zero = (a_exp == 8'd0) && (a_mant == 23'd0);
    assign b_zero = (b_exp == 8'd0) && (b_mant == 23'd0);
    assign a_inf  = (a_exp == 8'hFF) && (a_mant == 23'd0);
    assign b_inf  = (b_exp == 8'hFF) && (b_mant == 23'd0);
    assign a_nan  = (a_exp == 8'hFF) && (a_mant != 23'd0);
    assign b_nan  = (b_exp == 8'hFF) && (b_mant != 23'd0);
    assign a_denormal = (a_exp == 8'd0) && (a_mant != 23'd0);
    assign b_denormal = (b_exp == 8'd0) && (b_mant != 23'd0);
    assign res_sign = a_sign ^ b_sign;
endmodule