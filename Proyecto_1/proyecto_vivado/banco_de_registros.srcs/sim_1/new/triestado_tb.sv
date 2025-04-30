`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 19:09:32
// Design Name: 
// Module Name: triestado_tb
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


module triestado_tb;

    logic [15:0] IN = 16'h1234;
    logic SEL;
    wire [15:0] OUT;
    
    triestado dut(.*);
    
    initial begin
        $display("=== TEST triestado ===");
        // Test 1: Alta impedancia
        SEL = 0; #10;
        assert(OUT === 16'bz) else $error("No entra en Z");
        
        // Test 2: Conducción
        SEL = 1; #10;
        assert(OUT === 16'h1234) else $error("No conduce correctamente");
        
        SEL = 0; #10;
        assert(OUT === 16'bz) else $error("No entra en Z");
        $display("¡Todos los tests pasaron!");
        $finish;
    end
endmodule
