`timescale 1ns / 1ps

module bancoderegistros_scoreboard;
    // Modelo de referencia para todos los registros
    logic [15:0] model_mem[16];
    
    // Función para resetear el modelo
    function void reset_model();
        foreach(model_mem[i]) model_mem[i] = 0;
        $display("[SCOREBOARD] Modelo reseteado");
    endfunction
    
    // Función para actualizar el modelo
    function void update_model(input [3:0] addr, input [15:0] val);
        // Actualiza el registro principal
        model_mem[addr] = val;
        
        // Actualización bidireccional para registros combinados
        case(addr)
            // Registros combinados (AX, BX, CX, DX)
            8: begin  // AX
                model_mem[0] = {val[15:8], 8'h00}; // AH
                model_mem[4] = {8'h00, val[7:0]};  // AL
            end
            9: begin  // BX
                model_mem[1] = {val[15:8], 8'h00}; // BH
                model_mem[5] = {8'h00, val[7:0]};  // BL
            end
            10: begin // CX
                model_mem[2] = {val[15:8], 8'h00}; // CH
                model_mem[6] = {8'h00, val[7:0]};  // CL
            end
            11: begin // DX
                model_mem[3] = {val[15:8], 8'h00}; // DH
                model_mem[7] = {8'h00, val[7:0]};  // DL
            end
            
            // Partes altas (AH, BH, CH, DH)
            0: model_mem[8][15:8] = val[15:8]; // AH -> AX
            1: model_mem[9][15:8] = val[15:8]; // BH -> BX
            2: model_mem[10][15:8] = val[15:8]; // CH -> CX
            3: model_mem[11][15:8] = val[15:8]; // DH -> DX
            
            // Partes bajas (AL, BL, CL, DL)
            4: model_mem[8][7:0] = val[7:0]; // AL -> AX
            5: model_mem[9][7:0] = val[7:0]; // BL -> BX
            6: model_mem[10][7:0] = val[7:0]; // CL -> CX
            7: model_mem[11][7:0] = val[7:0]; // DL -> DX
        endcase
    endfunction
    
    // Función para obtener valor esperado
    function [15:0] get_expected(input [3:0] addr);
        return model_mem[addr];
    endfunction
    
    // Función para verificar resultados
    function void check_scoreboard(input string name, input [15:0] exp, actual);
        if (exp !== actual) begin
            $error("[SCOREBOARD] Error en %s: Esperado=%h, Obtenido=%h", 
                  name, exp, actual);
        end
        else begin
            $display("[SCOREBOARD] %s OK: %h", name, actual);
        end
    endfunction
endmodule
