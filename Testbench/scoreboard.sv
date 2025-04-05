class RegBankScoreboard;
  logic [31:0] model_mem[0:31]; // Modelo de referencia

  // Metodo para modelar una escritura
  function void write(logic [4:0] addr, logic [31:0] data);
    model_mem[addr] = data;
  endfunction

  // Metodo para verificar una lectura
  function void check(logic [4:0] addr, logic [31:0] dut_data);
    if (model_mem[addr] !== dut_data) begin
      $display("ERROR: Mismatch en addr %0d. Esperado: %0h, DUT: %0h", addr, model_mem[addr], dut_data);
    end else begin
      $display("OK: addr %0d = %0h", addr, dut_data);
    end
  endfunction
endclass
