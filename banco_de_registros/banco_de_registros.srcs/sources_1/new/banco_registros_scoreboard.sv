class BancoRegistrosScoreboard;
        logic [15:0] modelo[16]; // 16 registros (8-bit y 16-bit combinados)

        function void reset();
            foreach(modelo[i]) modelo[i] = 16'h0000;
        endfunction

        function void write(logic [3:0] sel, logic [15:0] data);
            // Manejo especial para registros de 8-bit
            case(sel)
                4'h0: modelo[sel][7:0] = data[7:0];  // AL
                4'h1: modelo[sel][7:0] = data[7:0];  // CL
                // ... otros registros bajos
                4'h8: {modelo[8][15:8], modelo[0][7:0]} = data; // AX (AH+AL)
                // ... otros mapeos
                default: modelo[sel] = data; // 16-bit
            endcase
        endfunction

        function void check(logic [3:0] sel, logic [15:0] dut_data);
            if (modelo[sel] !== dut_data) begin
                $error("ERROR: Reg %0d -> Esperado: %h, Leído: %h", 
                      sel, modelo[sel], dut_data);
            end
        endfunction
    endclass