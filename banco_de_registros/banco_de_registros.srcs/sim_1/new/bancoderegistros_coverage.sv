`timescale 1ns / 1ps

module bancoderegistros_coverage(input clk, input [3:0] sel, input wr, input rd);
    covergroup cg_registros @(posedge clk);
        option.per_instance = 1;
        option.comment = "Cobertura del banco de registros";
        
        cp_sel: coverpoint sel {
            bins combinados[] = {[8:11]};  // AX, BX, CX, DX
            bins bajas[] = {[4:7]};        // AL, BL, CL, DL
            bins altas[] = {[0:3]};        // AH, BH, CH, DH
            bins punteros[] = {[12:15]};   // SP, BP, SI, DI
            illegal_bins invalid = default;
        }
        
        cp_ops: coverpoint {wr,rd} {
            bins escritura = {2'b10};
            bins lectura = {2'b01};
            bins conflicto = {2'b11};
            bins idle = {2'b00};
        }
        
        cruzado: cross cp_sel, cp_ops {
            bins write_ax = binsof(cp_sel.combinados) intersect {8} && binsof(cp_ops.escritura);
            bins read_bx = binsof(cp_sel.combinados) intersect {9} && binsof(cp_ops.lectura);
            // Add more cross bins as needed
        }
    endgroup
    
    cg_registros cov = new();
    
    // Sample on every clock edge when conditions are met
    always @(posedge clk) begin
        cov.sample();
    end
    
    function real get_coverage();
        return cov.get_inst_coverage();
    endfunction
    
    // Add periodic coverage display
    initial begin
        forever begin
            #1000; // Adjust timing as needed
            $display("[COVERAGE] Current coverage: %.2f%%", get_coverage());
        end
    end
endmodule