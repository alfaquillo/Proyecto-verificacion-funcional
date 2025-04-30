`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 18:55:47
// Design Name: 
// Module Name: multiplexor16x16_tb
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


module multiplexor16x16_tb;
    logic [15:0] A0=0, A1=1, A2=2, A3=3, A4=4, A5=5, A6=6, A7=7,
                 A8=8, A9=9, A10=10, A11=11, A12=12, A13=13, A14=14, A15=15;
    logic [3:0] SEL;
    logic [15:0] OUT;
    
    multiplexor16x16 dut(.*);
    
    initial begin
        $display("=== TEST multiplexor16x16 ===");
        for(int i=0; i<16; i++) begin
            SEL = i;
            #10;
            assert(OUT === i) else $error("SEL=%0d, OUT=%0d", i, OUT);
        end
        
        // Test caso inválido
        SEL = 4'bxxxx; #10;
        assert(OUT === 16'bx) else $error("No maneja X correctamente");
        
        $display("¡Todos los tests pasaron!");
        $finish;
    end
endmodule
