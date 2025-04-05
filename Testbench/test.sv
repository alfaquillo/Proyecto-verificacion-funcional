module testbench;
  logic clk, rst;
  logic [4:0] addr;
  logic [31:0] wdata, rdata;
  logic write_en, read_en;

  // DUT
  RegBank dut (
    .clk(clk), .rst(rst),
    .addr(addr), .wdata(wdata),
    .write_en(write_en),
    .read_en(read_en),
    .rdata(rdata)
  );

  // Coverage & Scoreboard
  RegBankCoverage coverage = new();
  RegBankScoreboard scoreboard = new();

  // Reloj
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    rst = 1;
    #10 rst = 0;

    repeat (20) begin
      addr = $urandom_range(0, 31);
      wdata = $urandom;
      write_en = 1;
      read_en = 0;
      @(posedge clk);
      
      // Modelar comportamiento esperado
      scoreboard.write(addr, wdata);
      coverage.sample(addr, write_en);

      // Esperar y luego leer
      write_en = 0;
      read_en = 1;
      @(posedge clk);
      read_en = 0;

      // Verificar
      scoreboard.check(addr, rdata);
    end

    $finish;
  end
endmodule
