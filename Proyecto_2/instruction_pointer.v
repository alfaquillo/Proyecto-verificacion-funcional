module instruction_pointer (
    input logic clk,
    input logic rst,
    input logic load_ip,
    input logic inc_ip,
    input logic [15:0] ip_in,
    output logic [15:0] ip_out
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            ip_out <= 16'h0000;
        else if (load_ip)
            ip_out <= ip_in;
        else if (inc_ip)
            ip_out <= ip_out + 1;
    end
endmodule