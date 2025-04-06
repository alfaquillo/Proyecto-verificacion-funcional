module tb_bancoderegistros;
  logic CLK = 0, RST;
  logic RD, WR;
  logic [3:0] SEL;
  wire [15:0] DATA;

  logic [15:0] data_out;
  logic [15:0] data_drive;
  logic data_drive_en;

  // Simulación de inout
  assign DATA = data_drive_en ? data_drive : 16'bz;
  assign data_out = DATA;

  // Instanciación del DUT
  bancoderegistros dut(CLK, RST, RD, WR, SEL, DATA);

  // Clock
  always #5 CLK = ~CLK;

  // Scoreboard y Coverage
  BancoRegistrosScoreboard sb = new();
  BancoRegistrosCoverage cov = new();

  initial begin
    RST = 1;
    RD = 0;
    WR = 0;
    data_drive_en = 0;
    #10 RST = 0;

    repeat (20) begin
      @(posedge CLK);

      // Escritura
      SEL = $urandom_range(0, 15);
      data_drive = $urandom;
      WR = 1;
      RD = 0;
      data_drive_en = 1;

      @(posedge CLK); // aplicar la escritura

      WR = 0;
      data_drive_en = 0;

      // Actualizar scoreboard y coverage
      sb.write(SEL, data_drive);
      cov.sample(SEL, RD, 1'b1); // escritura

      // Lectura
      RD = 1;
      WR = 0;

      @(posedge CLK); // aplicar la lectura

      sb.check(SEL, data_out);
      cov.sample(SEL, 1'b1, WR); // lectura

      RD = 0;
    end

    $finish;
  end
endmodule

