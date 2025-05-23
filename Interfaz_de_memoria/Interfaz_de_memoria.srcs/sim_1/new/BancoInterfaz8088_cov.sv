`timescale 1ns / 1ps

module BancoInterfaz8088_coverage (
    input CLK,
    input IOM,
    input DTR,
    input DEN,
    input RD,
    input WR,
    input HOLD,
    input HLDA,
    input INTR,
    input NMI,
    input [1:0] SEG_SEL,
    input [2:0] M1_SEL,
    input [2:0] M2_SEL,
    input OP,
    input ENA_CS,
    input ENA_DS,
    input ENA_ES,
    input ENA_SS,
    input QUEUE_ENA
);

    // Coverage para señales de control
    covergroup control_signals_cg @(posedge CLK);
        IOM_cp: coverpoint IOM;
        DTR_cp: coverpoint DTR;
        DEN_cp: coverpoint DEN;
        RD_cp: coverpoint RD;
        WR_cp: coverpoint WR;
        HOLD_cp: coverpoint HOLD;
        HLDA_cp: coverpoint HLDA;
        INTR_cp: coverpoint INTR;
        NMI_cp: coverpoint NMI;
        OP_cp: coverpoint OP;
        
        // Cruces básicos
        RD_WR_cross: cross RD_cp, WR_cp;
        HOLD_HLDA_cross: cross HOLD_cp, HLDA_cp;
        INTR_NMI_cross: cross INTR_cp, NMI_cp;
    endgroup
    
    // Coverage para selección de segmentos
    covergroup segment_selection_cg @(posedge CLK);
        SEG_SEL_cp: coverpoint SEG_SEL {
            bins seg_cs = {2'b00};
            bins seg_ds = {2'b01};
            bins seg_es = {2'b10};
            bins seg_ss = {2'b11};
        }
        OP_cp: coverpoint OP;
        
        // Cruce entre selección de segmento y modo OP
        SEG_OP_cross: cross SEG_SEL_cp, OP_cp;
    endgroup
    
    // Coverage para selección de registros
    covergroup register_selection_cg @(posedge CLK);
        M1_SEL_cp: coverpoint M1_SEL {
            bins reg_bx = {3'b000};
            bins reg_si = {3'b001};
            bins reg_di = {3'b010};
            bins reg_bp = {3'b011};
            bins reg_sp = {3'b100};
        }
        M2_SEL_cp: coverpoint M2_SEL {
            bins reg_bx = {3'b000};
            bins reg_si = {3'b001};
            bins reg_di = {3'b010};
            bins reg_bp = {3'b011};
            bins reg_sp = {3'b100};
        }
    endgroup
    
    // Coverage para habilitación de registros
    covergroup register_enable_cg @(posedge CLK);
        ENA_CS_cp: coverpoint ENA_CS;
        ENA_DS_cp: coverpoint ENA_DS;
        ENA_ES_cp: coverpoint ENA_ES;
        ENA_SS_cp: coverpoint ENA_SS;
        QUEUE_ENA_cp: coverpoint QUEUE_ENA;
    endgroup
    
    // Instancias de los covergroups
    control_signals_cg ctrl_cg = new();
    segment_selection_cg seg_cg = new();
    register_selection_cg reg_cg = new();
    register_enable_cg ena_cg = new();
    
    // Función para obtener el coverage total
    function real get_coverage();
        real total;
        total = ctrl_cg.get_coverage();
        total += seg_cg.get_coverage();
        total += reg_cg.get_coverage();
        total += ena_cg.get_coverage();
        return total / 4.0; // Promedio de los 4 covergroups
    endfunction

endmodule