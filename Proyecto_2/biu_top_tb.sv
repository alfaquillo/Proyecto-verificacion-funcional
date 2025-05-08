`timescale 1ns/1ps

module biu_top_tb;

    // Inputs
    logic clk;
    logic rst;
    logic seg_we;
    logic [1:0] seg_sel;
    logic [15:0] seg_in;
    logic load_ip;
    logic inc_ip;
    logic [15:0] ip_in;
    logic mem_read;
    logic mem_write;
    logic io_read;
    logic io_write;
    logic [7:0] data_in;

    // Outputs
    logic [19:0] addr_bus;
    logic [7:0] data_out;
    logic rd, wr, ale;

    // Instantiate the top-level module
    biu_top uut (
        .clk(clk), .rst(rst), .seg_we(seg_we), .seg_sel(seg_sel), .seg_in(seg_in),
        .load_ip(load_ip), .inc_ip(inc_ip), .ip_in(ip_in),
        .mem_read(mem_read), .mem_write(mem_write), .io_read(io_read), .io_write(io_write),
        .data_in(data_in),
        .addr_bus(addr_bus), .data_out(data_out),
        .rd(rd), .wr(wr), .ale(ale)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $display("Starting BIU testbench...");
        $dumpfile("biu_top_tb.vcd");
        $dumpvars(0, biu_top_tb);

        // Initialize
        clk = 0;
        rst = 1;
        seg_we = 0;
        seg_sel = 0;
        seg_in = 0;
        load_ip = 0;
        inc_ip = 0;
        ip_in = 0;
        mem_read = 0;
        mem_write = 0;
        io_read = 0;
        io_write = 0;
        data_in = 8'h00;

        #10;
        rst = 0;

        // Write to CS = 16'h1234
        #10;
        seg_sel = 2'd0; // CS
        seg_in = 16'h1234;
        seg_we = 1;

        #10;
        seg_we = 0;

        // Load IP = 16'h00A0
        ip_in = 16'h00A0;
        load_ip = 1;

        #10;
        load_ip = 0;

        // Read from memory at CS:IP = 1234:00A0 => 0x12340 + 0x00A0 = 0x123E0
        mem_read = 1;

        #10;
        mem_read = 0;

        // Increment IP and do a memory write
        inc_ip = 1;

        #10;
        inc_ip = 0;

        mem_write = 1;
        data_in = 8'hAA;

        #10;
        mem_write = 0;

        // Finish simulation
        #20;
        $display("Simulation complete.");
        $finish;
    end

endmodule
