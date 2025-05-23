`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 09:10:48
// Design Name: 
// Module Name: bancoderegistrossegmento_tb
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


module BancodeRegistrosSegmento_tb;

    reg CLK, RST;
    reg ENA_CS, ENA_DS, ENA_ES, ENA_SS;
    reg [15:0] D_CS, D_DS, D_ES, D_SS;
    wire [15:0] Q_CS, Q_DS, Q_ES, Q_SS;
    
    BancodeRegistrosSegmento uut (
        .CLK(CLK),
        .RST(RST),
        .ENA_CS(ENA_CS),
        .ENA_DS(ENA_DS),
        .ENA_ES(ENA_ES),
        .ENA_SS(ENA_SS),
        .D_CS(D_CS),
        .D_DS(D_DS),
        .D_ES(D_ES),
        .D_SS(D_SS),
        .Q_CS(Q_CS),
        .Q_DS(Q_DS),
        .Q_ES(Q_ES),
        .Q_SS(Q_SS)
    );
    
    // Reloj
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Monitor para ver cambios en señales importantes
    initial begin
        $monitor("T=%0t | CLK=%b RST=%b | ENA_CS=%b D_CS=%h Q_CS=%h | ENA_DS=%b D_DS=%h Q_DS=%h | ENA_ES=%b D_ES=%h Q_ES=%h | ENA_SS=%b D_SS=%h Q_SS=%h", 
                 $time, CLK, RST, 
                 ENA_CS, D_CS, Q_CS,
                 ENA_DS, D_DS, Q_DS,
                 ENA_ES, D_ES, Q_ES,
                 ENA_SS, D_SS, Q_SS);
    end

    initial begin
        // Inicializar señales
        RST = 1;
        ENA_CS = 0; ENA_DS = 0; ENA_ES = 0; ENA_SS = 0;
        D_CS = 0; D_DS = 0; D_ES = 0; D_SS = 0;

        $display("=== INICIO DE PRUEBAS ===");

        // 1) Reset: los valores deben ser los que configuraste en cada registro
        #20;
        RST = 0;
        #5;
        $display(">> Test Reset:");
        if (Q_CS !== 16'hF000) $error("Error reset CS: esperado F000, obtenido %h", Q_CS);
        else $display("Reset CS correcto: %h", Q_CS);
        if (Q_DS !== 16'h0000) $error("Error reset DS: esperado 0000, obtenido %h", Q_DS);
        else $display("Reset DS correcto: %h", Q_DS);
        if (Q_ES !== 16'h0000) $error("Error reset ES: esperado 0000, obtenido %h", Q_ES);
        else $display("Reset ES correcto: %h", Q_ES);
        if (Q_SS !== 16'h0000) $error("Error reset SS: esperado 0000, obtenido %h", Q_SS);
        else $display("Reset SS correcto: %h", Q_SS);

        // 2) Escritura en CS
        $display(">> Test Escritura CS");
        D_CS = 16'h1234; ENA_CS = 1;
        @(posedge CLK);
        #1;
        ENA_CS = 0;
        if (Q_CS !== 16'h1234) $error("Error escritura CS: esperado 1234, obtenido %h", Q_CS);
        else $display("Escritura CS correcta: %h", Q_CS);

        // 3) Escritura en DS
        $display(">> Test Escritura DS");
        D_DS = 16'h5678; ENA_DS = 1;
        @(posedge CLK);
        #1;
        ENA_DS = 0;
        if (Q_DS !== 16'h5678) $error("Error escritura DS: esperado 5678, obtenido %h", Q_DS);
        else $display("Escritura DS correcta: %h", Q_DS);

        // 4) Escritura en ES
        $display(">> Test Escritura ES");
        D_ES = 16'h9ABC; ENA_ES = 1;
        @(posedge CLK);
        #1;
        ENA_ES = 0;
        if (Q_ES !== 16'h9ABC) $error("Error escritura ES: esperado 9ABC, obtenido %h", Q_ES);
        else $display("Escritura ES correcta: %h", Q_ES);

        // 5) Escritura en SS
        $display(">> Test Escritura SS");
        D_SS = 16'hDEF0; ENA_SS = 1;
        @(posedge CLK);
        #1;
        ENA_SS = 0;
        if (Q_SS !== 16'hDEF0) $error("Error escritura SS: esperado DEF0, obtenido %h", Q_SS);
        else $display("Escritura SS correcta: %h", Q_SS);

        $display("=== TODOS LOS TESTS COMPLETADOS ===");
        $finish;
    end
endmodule