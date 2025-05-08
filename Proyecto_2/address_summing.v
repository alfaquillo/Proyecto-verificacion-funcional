module address_summing (
    input logic [15:0] segment,
    input logic [15:0] offset,
    output logic [19:0] phys_addr
);
    assign phys_addr = {segment, 4'b0000} + offset;
endmodule