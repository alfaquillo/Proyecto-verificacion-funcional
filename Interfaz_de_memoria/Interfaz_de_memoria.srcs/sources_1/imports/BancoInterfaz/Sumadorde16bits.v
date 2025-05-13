module Sumador16bits (A, B, OUT);

    input [15:0] A, B;
    output wire [15:0] OUT;

    assign OUT = A + B;  

endmodule