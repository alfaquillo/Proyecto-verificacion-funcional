`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2025 11:41:57 AM
// Design Name: 
// Module Name: fpu_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module fpu_mux (
    input [1:0] op,  // 00: suma, 01: resta, 10: mult, 11: div
    input [31:0] adder_res,
    input        adder_err,
    input        adder_ovf,
    input        adder_udf,
    input [31:0] mult_res,
    input        mult_err,
    input        mult_ovf,
    input        mult_udf,
    input [31:0] div_res,
    input        div_err,
    input        div_ovf,
    input        div_udf,
    output reg [31:0] result,
    output reg        error,
    output reg        overflow,
    output reg        underflow
);

    always @(*) begin
        case (op)
            2'b00, 2'b01: begin // suma o resta
                result     = adder_res;
                error      = adder_err;
                overflow   = adder_ovf;
                underflow  = adder_udf;
            end
            2'b10: begin // multiplicación
                result     = mult_res;
                error      = mult_err;
                overflow   = mult_ovf;
                underflow  = mult_udf;
            end
            default: begin // división
                result     = div_res;
                error      = div_err;
                overflow   = div_ovf;
                underflow  = div_udf;
            end
        endcase
    end

endmodule
