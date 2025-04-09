`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 18:38:13
// Design Name: 
// Module Name: registro8bits_tb
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
`timescale 1ns/1ps

module registro8bits_tb;
    logic CLK=0, RST, ENA;
    logic [7:0] D, Q;
    
    registro8bits dut(.*);
    
    always #5 CLK = ~CLK;
    
    initial begin
        $display("=== TEST registro8bits ===");
        // Test 1: Reset
        RST = 1; ENA = 0; D = 8'hFF; #10;
        assert(Q === 8'h00) else $error("Reset falló");
        
        // Test 2: Escritura
        RST = 0; ENA = 1; D = 8'hAA; @(posedge CLK); #1;
        assert(Q === 8'hAA) else $error("Escritura falló");
        
        // Test 3: Retención
        ENA = 0; D = 8'h55; repeat(2) @(posedge CLK);
        assert(Q === 8'hAA) else $error("Retención falló");
        
        $display("¡Todos los tests pasaron!");
        $finish;
    end
endmodule