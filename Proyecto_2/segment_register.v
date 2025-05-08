module segment_register (
    input logic clk,
    input logic rst,
    input logic we,
    input logic [1:0] seg_sel,
    input logic [15:0] seg_in,
    output logic [15:0] cs_out,
    output logic [15:0] ds_out,
    output logic [15:0] ss_out,
    output logic [15:0] es_out
);

    logic [15:0] segment_regs [3:0];

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            segment_regs[0] <= 16'h0000;
            segment_regs[1] <= 16'h0000;
            segment_regs[2] <= 16'h0000;
            segment_regs[3] <= 16'h0000;
        end else if (we) begin
            segment_regs[seg_sel] <= seg_in;
        end
    end

    assign cs_out = segment_regs[0];
    assign ds_out = segment_regs[1];
    assign ss_out = segment_regs[2];
    assign es_out = segment_regs[3];
endmodule