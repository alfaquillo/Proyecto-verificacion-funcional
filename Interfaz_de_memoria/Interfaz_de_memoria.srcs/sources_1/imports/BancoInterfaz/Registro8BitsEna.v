module Registro8Ena (CLK, RST, ENA, D, Q);

    input CLK, RST, ENA;
    input [7:0] D;
    output reg [7:0] Q;

    always @(posedge CLK or posedge RST)
        if (RST)
            Q <= 8'h80;
        else if (ENA)
            Q <= D;
        else
            Q <= Q;

endmodule