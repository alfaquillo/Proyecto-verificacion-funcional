`timescale 1ns / 1ps

module biu_top_tb;

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
    logic [19:0] addr_bus;
    logic [7:0] data_out;
    logic rd;
    logic wr;
    logic ale;

    biu_top uut (
        .clk(clk), .rst(rst), .seg_we(seg_we), .seg_sel(seg_sel), .seg_in(seg_in),
        .load_ip(load_ip), .inc_ip(inc_ip), .ip_in(ip_in),
        .mem_read(mem_read), .mem_write(mem_write), .io_read(io_read), .io_write(io_write),
        .data_in(data_in), .addr_bus(addr_bus), .data_out(data_out),
        .rd(rd), .wr(wr), .ale(ale)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk = 0;
        rst = 1;
        seg_we = 0;
        seg_sel = 0;
        seg_in = 16'h0000;
        load_ip = 0;
        inc_ip = 0;
        ip_in = 16'h0000;
        mem_read = 0;
        mem_write = 0;
        io_read = 0;
        io_write = 0;
        data_in = 8'h00;

        // Reset pulse
        #10 rst = 0;

        // Write to CS and test CS:IP
        #10 seg_sel = 2'b00; seg_in = 16'h1234; seg_we = 1;
        #10 seg_we = 0;
        #10 ip_in = 16'h0010; load_ip = 1;
        #10 load_ip = 0;
        #1 if (addr_bus !== 20'h12340 + 20'h0010) $error("CS:IP address calculation error");

        // Test DS segment
        #10 seg_sel = 2'b01; seg_in = 16'h5678; seg_we = 1;
        #10 seg_we = 0; ip_in = 16'h1000; load_ip = 1;
        #10 load_ip = 0;
        #1 if (addr_bus !== ((16'h5678 << 4) + 16'h1000)) $error("DS:IP address calculation error");

        // Test SS segment
        #10 seg_sel = 2'b10; seg_in = 16'h9ABC; seg_we = 1;
        #10 seg_we = 0; ip_in = 16'h2000; load_ip = 1;
        #10 load_ip = 0;
        #1 if (addr_bus !== ((16'h9ABC << 4) + 16'h2000)) $error("SS:IP address calculation error");

        // Test ES segment
        #10 seg_sel = 2'b11; seg_in = 16'hDEF0; seg_we = 1;
        #10 seg_we = 0; ip_in = 16'h3000; load_ip = 1;
        #10 load_ip = 0;
        #1 if (addr_bus !== ((16'hDEF0 << 4) + 16'h3000)) $error("ES:IP address calculation error");

        // Memory Read
        #10 mem_read = 1;
        #1 if (!rd || wr) $error("Memory read control signals error");
        #10 mem_read = 0;

        // Memory Write
        #10 data_in = 8'hAA; mem_write = 1;
        #1 if (!wr || rd || data_out !== 8'hAA) $error("Memory write signals or data error");
        #10 mem_write = 0;

        // Increment IP
        #10 inc_ip = 1;
        #10 inc_ip = 0;
        #1 if (addr_bus !== ((16'hDEF0 << 4) + 16'h3001)) $error("IP increment address calculation error");

        // IO Read
        #10 io_read = 1;
        #1 if (!rd || wr) $error("IO read control signals error");
        #10 io_read = 0;

        // IO Write
        #10 data_in = 8'h55; io_write = 1;
        #1 if (!wr || rd || data_out !== 8'h55) $error("IO write signals or data error");
        #10 io_write = 0;

        // Final message
        #20 $display("All tests passed");
        $stop;
    end

endmodule