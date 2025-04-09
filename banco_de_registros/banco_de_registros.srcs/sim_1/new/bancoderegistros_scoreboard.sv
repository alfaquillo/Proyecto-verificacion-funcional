`timescale 1ns / 1ps

module bancoderegistros_scoreboard;
    // Scoreboard
    logic [15:0] model_mem[16]; // Modelo de referencia
    
    function void check_scoreboard(input string name, input [15:0] exp, actual);
        if (exp !== actual) begin
            $error("[SCOREBOARD] Error en %s: Esperado=%h, Obtenido=%h", 
                  name, exp, actual);
        end
        else begin
            $display("[SCOREBOARD] %s OK: %h", name, actual);
        end
    endfunction
    
    function void reset_model();
        foreach(model_mem[i]) model_mem[i] = 0;
    endfunction
    
    function void update_model(input [3:0] addr, input [15:0] val);
        model_mem[addr] = val;
    endfunction
    
    function [15:0] get_expected(input [3:0] addr);
        return model_mem[addr];
    endfunction
endmodule