`timescale 1ns / 1ps

module bancoderegistros_coverage(input clk, input [3:0] sel, input wr, input rd);
    // Grupo de cobertura
    covergroup cg_registros @(posedge clk);
        // Cobertura de selección de registros
        cp_sel: coverpoint sel {
            bins combinados = {8,9,10,11};  // AX-DX
            bins bajas = {4,5,6,7};         // AL-BL
            bins altas = {0,1,2,3};         // AH-BH
            bins punteros = {12,13,14,15};  // SP-DI
            illegal_bins invalid = default; // Valores no definidos
        }
        
        // Cobertura de operaciones
        cp_ops: coverpoint {wr,rd} {
            bins escritura = {2'b10};
            bins lectura = {2'b01};
            bins conflicto = {2'b11};
            bins idle = {2'b00};
        }
        
        // Cruzado entre operaciones y selección
        cruzado: cross cp_sel, cp_ops;
    endgroup
    
    // Instancia del grupo de cobertura
    cg_registros cov = new();
    
    // Función para obtener porcentaje de cobertura
    function real get_coverage();
        real total;
        total = cov.get_inst_coverage();
        return total;
    endfunction
endmodule