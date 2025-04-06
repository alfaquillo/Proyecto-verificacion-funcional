class BancoRegistrosScoreboard;
  logic [15:0] modelo[0:15]; // modelo interno de los registros

  function void write(logic [3:0] sel, logic [15:0] data);
    modelo[sel] = data;
  endfunction

  function void check(logic [3:0] sel, logic [15:0] dut_out);
    if (modelo[sel] !== dut_out) begin
      $display("❌ Mismatch en %0d: Esperado=%h, DUT=%h", sel, modelo[sel], dut_out);
    end else begin
      $display("✅ Coinciden en %0d: %h", sel, dut_out);
    end
  endfunction
endclass
