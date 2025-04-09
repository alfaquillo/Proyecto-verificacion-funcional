`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 21:04:02
// Design Name: 
// Module Name: banco_registros_coverage
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


covergroup cg_registros @(posedge CLK);
        reg_sel: coverpoint SEL {
            bins regs_8bit_low = {[0:3]};  // AL, CL, DL, BL
            bins regs_8bit_high = {[4:7]}; // AH, CH, DH, BH
            bins regs_16bit = {[8:15]};    // AX, CX, ..., DI
        }

        ops: coverpoint {RD, WR} {
            bins read = {2'b10};
            bins write = {2'b01};
            illegal_bins conflict = {2'b11};
        }

        cruzado: cross reg_sel, ops;
    endgroup
