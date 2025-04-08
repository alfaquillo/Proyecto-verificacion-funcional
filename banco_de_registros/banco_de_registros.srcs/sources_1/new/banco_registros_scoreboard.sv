class BancoRegistrosScoreboard;
  logic [15:0] modelo[0:15]; // modelo interno de los registros

  function new();
    // Inicializar todos los registros a 0 (como después de reset)
    foreach(modelo[i]) modelo[i] = 16'h0000;
  endfunction

  function void write(logic [3:0] sel, logic [15:0] data);
    modelo[sel] = data;
    $display("Scoreboard: Escribiendo %h en registro %0d", data, sel);
  endfunction

  function void check(logic [3:0] sel, logic [15:0] dut_out);
    if (modelo[sel] !== dut_out) begin
      $display("❌ [%0t] Error en registro %0d: Esperado=%h, DUT=%h", $time, sel, modelo[sel], dut_out);
    end else begin
      $display("✅ [%0t] Registro %0d correcto: %h", $time, sel, dut_out);
    end
  endfunction
endclass