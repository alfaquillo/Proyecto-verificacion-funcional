module biu_top (
    input logic clk,
    input logic rst,
    input logic seg_we,
    input logic [1:0] seg_sel,
    input logic [15:0] seg_in,
    input logic load_ip,
    input logic inc_ip,
    input logic [15:0] ip_in,
    input logic mem_read,
    input logic mem_write,
    input logic io_read,
    input logic io_write,
    input logic [7:0] data_in,
    output logic [19:0] addr_bus,
    output logic [7:0] data_out,
    output logic rd,
    output logic wr,
    output logic ale
);
    // Internal wires
    logic [15:0] ip_val;
    logic [15:0] cs_val;
    logic [19:0] phys_addr;

    // Modules
    segment_register_file seg_regs (
        .clk(clk), .rst(rst), .we(seg_we), .seg_sel(seg_sel), .seg_in(seg_in),
        .cs_out(cs_val), .ds_out(), .ss_out(), .es_out()
    );

    instruction_pointer ip (
        .clk(clk), .rst(rst), .load_ip(load_ip), .inc_ip(inc_ip), .ip_in(ip_in),
        .ip_out(ip_val)
    );

    address_summing addr_sum (
        .segment(cs_val), .offset(ip_val), .phys_addr(phys_addr)
    );

    bus_control_logic bus_ctrl (
        .clk(clk), .rst(rst), .mem_read(mem_read), .mem_write(mem_write),
        .io_read(io_read), .io_write(io_write), .addr_in(phys_addr),
        .data_in(data_in), .addr_bus(addr_bus), .data_out(data_out),
        .rd(rd), .wr(wr), .ale(ale)
    );
endmodule