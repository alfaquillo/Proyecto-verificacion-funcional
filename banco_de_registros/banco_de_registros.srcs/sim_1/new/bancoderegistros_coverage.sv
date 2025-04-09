`timescale 1ns / 1ps

module bancoderegistros_coverage(input clk, input [3:0] sel, input wr, input rd);
    // Coverage
    covergroup cg_registros @(posedge clk);
        cp_sel: coverpoint sel {
            bins combinados = {8,9,10,11};  // AX-DX
            bins bajas = {4,5,6,7};         // AL-BL
            bins altas = {0,1,2,3};         // AH-BH
            bins punteros = {12,13,14,15};  // SP-DI
        }
        
        cp_ops: coverpoint {wr,rd} {
            bins escritura = {2'b10};
            bins lectura = {2'b01};
            bins conflicto = {2'b11};
            bins idle = {2'b00};
        }
        
        cruzado: cross cp_sel, cp_ops;
    endgroup
    
    cg_registros cov = new();
    
    function real get_coverage();
        return cov.get_inst_coverage();
    endfunction
endmodule