class RegBankCoverage;
  logic [4:0] addr;
  logic write_en;

  covergroup cg_addr @(posedge clk);
    option.per_instance = 1;
    ADDR: coverpoint addr {
      bins all_addresses[] = {[0:31]}; // ejemplo de 32 registros
    }
    WRITE_ENABLE: coverpoint write_en {
      bins enabled = {1};
      bins disabled = {0};
    }
    CROSS_ADDR_WRITE: cross ADDR, WRITE_ENABLE;
  endgroup

  function new();
    cg_addr = new();
  endfunction

  function void sample(logic [4:0] a, logic we);
    addr = a;
    write_en = we;
    cg_addr.sample();
  endfunction
endclass
