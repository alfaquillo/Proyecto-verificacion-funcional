`include "banco_registros_scoreboard.sv"
`include "banco_registros_coverage.sv"


module bancoderegistros_tb;
  logic CLK = 0, RST;
  logic RD, WR;
  logic [3:0] SEL;
  wire [15:0] DATA;

  logic [15:0] data_out;
  logic [15:0] data_drive;
  logic data_drive_en;

  // Simulación de bus bidireccional
  assign DATA = data_drive_en ? data_drive : 16'bz;
  assign data_out = DATA;

  // Instanciación del DUT
  bancoderegistros dut(CLK, RST, RD, WR, SEL, DATA);

  // Generación de reloj
  always #5 CLK = ~CLK;

  // Instancias de Scoreboard y Coverage
  BancoRegistrosScoreboard sb = new();
  BancoRegistrosCoverage cov = new();

  // Tarea para esperar un ciclo de reloj
  task wait_clock;
    @(posedge CLK);
    #1; // Pequeño retardo después del flanco
  endtask

  initial begin
    // Inicialización
    RST = 1;
    RD = 0;
    WR = 0;
    data_drive_en = 0;
    SEL = 0;
    data_drive = 0;
    
    // Reset prolongado
    repeat(2) wait_clock();
    
    // Liberar reset
    RST = 0;
    wait_clock();

    // Prueba de escritura/lectura aleatoria
    repeat (20) begin
      // Operación de escritura
      SEL = $urandom_range(0, 15);
      data_drive = $urandom();
      WR = 1;
      data_drive_en = 1;
      
      wait_clock();
      
      // Actualizar modelo y coverage
      sb.write(SEL, data_drive);
      cov.sample(SEL, 0, 1);
      
      // Desactivar escritura
      WR = 0;
      data_drive_en = 0;
      wait_clock();
      
      // Operación de lectura
      RD = 1;
      wait_clock();
      
      // Verificar
      sb.check(SEL, data_out);
      cov.sample(SEL, 1, 0);
      
      RD = 0;
      wait_clock();
    end

    // Reporte final
    $display("\n=== Resumen de Cobertura ===");
    $display("Registros cubiertos: %0.2f%%", cov.cg.REG_SELECT.get_coverage());
    $display("Operaciones cubiertas: %0.2f%%", cov.cg.OPERACION.get_coverage());
    $display("Cruces cubiertos: %0.2f%%", cov.cg.CRUZADA.get_coverage());
    
    $finish;
  end
endmodule