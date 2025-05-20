`timescale 1ns / 1ps

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

endmodule
