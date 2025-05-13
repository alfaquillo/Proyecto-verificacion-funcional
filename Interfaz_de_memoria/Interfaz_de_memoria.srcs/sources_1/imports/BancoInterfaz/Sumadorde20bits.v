module Sumador20bits (A, B, OUT);

    input [19:0] A, B;
    output wire [19:0] OUT;

    assign OUT = A + B;  

endmodule