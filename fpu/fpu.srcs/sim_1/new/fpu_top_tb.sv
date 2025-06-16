`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2025 11:49:07 AM
// Design Name: 
// Module Name: fpu_top_tb
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

module fpu_top_tb;

    // Señales DUT
    logic [1:0] op;
    logic [31:0] a, b;
    logic [31:0] result;
    logic error, underflow, overflow;

    // DUT
    fpu_top fpu (
        .op(op),
        .a(a),
        .b(b),
        .result(result),
        .error(error),
        .underflow(underflow),
        .overflow(overflow)
    );

    // Task para mostrar el resultado
    task mostrar_estado();
    begin
        $display("  Resultado  = 0x%08h (%f)", result, $bitstoshortreal(result));
        $display("  Error      = %b", error);
        $display("  Underflow  = %b", underflow);
        $display("  Overflow   = %b", overflow);
        $display("");
    end
    endtask

    // Task para pruebas
    task prueba(string nombre, logic [31:0] op_a, logic [31:0] op_b, logic [31:0] esperado, logic [1:0] operacion);
    begin
        a = op_a;
        b = op_b;
        op = operacion;
        #10;

        $display("==== %s ====", nombre);
        $display("  A = 0x%08h (%f)", a, $bitstoshortreal(a));
        $display("  B = 0x%08h (%f)", b, $bitstoshortreal(b));
        $display("  Esperado  = 0x%08h (%f)", esperado, $bitstoshortreal(esperado));
        mostrar_estado();
    end
    endtask

    initial begin
        $display("Iniciando pruebas para fpu_top (suma y resta)\n");

        // SUMAS
        prueba("1.0 + 1.0",       32'h3f800000, 32'h3f800000, 32'h40000000, 2'b00);
        prueba("0.5 + 0.25",      32'h3f000000, 32'h3e800000, 32'h3f400000, 2'b00);
        prueba("50.0 + 1.1",      32'h42480000, 32'h3f8ccccd, 32'h424c6666, 2'b00); // aproximado

        // RESTAS
        prueba("5.0 - 2.0",       32'h40a00000, 32'h40000000, 32'h40400000, 2'b01);
        prueba("3.5 - 3.5",       32'h40600000, 32'h40600000, 32'h00000000, 2'b01);
        prueba("2.5 - 3.5",       32'h40200000, 32'h40600000, 32'hbf800000, 2'b01);

        // Caso especial: Inf - Inf = NaN
        prueba("+Inf - +Inf",     32'h7f800000, 32'h7f800000, 32'h7fc00000, 2'b01);

        // Caso especial: NaN + 1.0 = NaN
        prueba("NaN + 1.0",       32'h7fc00000, 32'h3f800000, 32'h7fc00000, 2'b00);

        $display("Fin de pruebas.");
        $finish;
    end

endmodule

