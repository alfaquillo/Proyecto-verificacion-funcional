module bus_control_logic (
    input logic clk,
    input logic rst,
    input logic mem_read,
    input logic mem_write,
    input logic io_read,
    input logic io_write,
    input logic [19:0] addr_in,
    input logic [7:0] data_in,
    output logic [19:0] addr_bus,
    output logic [7:0] data_out,
    output logic rd,
    output logic wr,
    output logic ale
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            rd <= 0;
            wr <= 0;
            ale <= 0;
            addr_bus <= 20'h00000;
            data_out <= 8'h00;
        end else begin
            addr_bus <= addr_in;
            ale <= 1;
            if (mem_read || io_read) begin
                rd <= 1;
                wr <= 0;
            end else if (mem_write || io_write) begin
                wr <= 1;
                rd <= 0;
                data_out <= data_in;
            end else begin
                rd <= 0;
                wr <= 0;
            end
        end
    end
endmodule