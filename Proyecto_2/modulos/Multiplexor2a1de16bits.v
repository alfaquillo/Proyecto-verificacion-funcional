module Multiplexor2a1de16bits (A, B, SEL, OUT);  

    input [15:0] A, B;
    input SEL;
    output reg [15:0] OUT;

    always @(A or B or SEL)
    begin
        if (~SEL)
            OUT = A;
        else
            OUT = B;
    end

endmodule