`timescale 1ns / 1ps

module bancoderegistros_scoreboard;
    logic [15:0] model_mem[16];
    
    function void reset_model();
        foreach(model_mem[i]) model_mem[i] = 0;
        $display("[SCOREBOARD] Modelo reseteado");
    endfunction
    
    function void update_model(input [3:0] addr, input [15:0] val);
        // Actualización bidireccional completa
        case(addr)
            // Registros combinados
            8: begin model_mem[8] = val; model_mem[0] = {val[15:8], 8'h00}; model_mem[4] = {8'h00, val[7:0]}; end // AX
            9: begin model_mem[9] = val; model_mem[1] = {val[15:8], 8'h00}; model_mem[5] = {8'h00, val[7:0]}; end // BX
            10: begin model_mem[10] = val; model_mem[2] = {val[15:8], 8'h00}; model_mem[6] = {8'h00, val[7:0]}; end // CX
            11: begin model_mem[11] = val; model_mem[3] = {val[15:8], 8'h00}; model_mem[7] = {8'h00, val[7:0]}; end // DX
            
            // Partes altas
            0: begin model_mem[0] = {val[15:8], 8'h00}; model_mem[8][15:8] = val[15:8]; end // AH
            1: begin model_mem[1] = {val[15:8], 8'h00}; model_mem[9][15:8] = val[15:8]; end // BH
            2: begin model_mem[2] = {val[15:8], 8'h00}; model_mem[10][15:8] = val[15:8]; end // CH
            3: begin model_mem[3] = {val[15:8], 8'h00}; model_mem[11][15:8] = val[15:8]; end // DH
            
            // Partes bajas
            4: begin model_mem[4] = {8'h00, val[7:0]}; model_mem[8][7:0] = val[7:0]; end // AL
            5: begin model_mem[5] = {8'h00, val[7:0]}; model_mem[9][7:0] = val[7:0]; end // BL
            6: begin model_mem[6] = {8'h00, val[7:0]}; model_mem[10][7:0] = val[7:0]; end // CL
            7: begin model_mem[7] = {8'h00, val[7:0]}; model_mem[11][7:0] = val[7:0]; end // DL
            
            // Otros registros
            default: model_mem[addr] = val;
        endcase
    endfunction
    
    function [15:0] get_expected(input [3:0] addr);
        return model_mem[addr];
    endfunction
    
    function void check_scoreboard(input string name, input [15:0] exp, actual);
        if (exp !== actual) begin
            $error("[SCOREBOARD] Error en %s: Esperado=%h, Obtenido=%h", name, exp, actual);
        end
        else begin
            $display("[SCOREBOARD] %s OK: %h", name, actual);
        end
    endfunction
endmodule