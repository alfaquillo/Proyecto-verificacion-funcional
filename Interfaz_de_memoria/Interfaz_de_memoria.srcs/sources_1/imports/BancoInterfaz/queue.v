module queue (CLK, RST, ENA, DATAIN, DATAOUT);

    input CLK, RST, ENA;
    input [7:0] DATAIN;
    output wire [31:0] DATAOUT;

    // DATAIN -> R1 -> R2 -> R3 -> R4
    wire [7:0] DOUT1, DOUT2, DOUT3, DOUT4;

    Registro8Ena R1(CLK, RST, ENA, DATAIN, DOUT1);
    Registro8Ena R2(CLK, RST, ENA, DOUT1, DOUT2);
    Registro8Ena R3(CLK, RST, ENA, DOUT2, DOUT3);
    Registro8Ena R4(CLK, RST, ENA, DOUT3, DOUT4);

    assign DATAOUT = {DOUT4, DOUT3, DOUT2, DOUT1};

    /*
    Ejemplo de funcionamiento con RST:
    
    Estado inicial:
    DOUT4 = 80h, DOUT3 = 80h, DOUT2 = 80h, DOUT1 = 80h
    
    Después de 1 ciclo con ENA=1 y DATAIN=0Ah:
    DOUT4 = 80h, DOUT3 = 80h, DOUT2 = 80h, DOUT1 = 0Ah
    
    Después de 2 ciclos con ENA=1 y DATAIN=F0h:
    DOUT4 = 80h, DOUT3 = 80h, DOUT2 = 0Ah, DOUT1 = F0h
    
    Después de 3 ciclos con ENA=1 y DATAIN=D7h:
    DOUT4 = 80h, DOUT3 = 0Ah, DOUT2 = F0h, DOUT1 = D7h
    
    Después de 4 ciclos con ENA=1 y DATAIN=51h:
    DOUT4 = 0Ah, DOUT3 = F0h, DOUT2 = D7h, DOUT1 = 51h
    */

endmodule