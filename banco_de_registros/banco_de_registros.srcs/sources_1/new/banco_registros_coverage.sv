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


class BancoRegistrosCoverage;
  logic [3:0] sel;
  logic rd, wr;
  logic clk;

  covergroup cg @(posedge clk);
    option.per_instance = 1;

    REG_SELECT: coverpoint sel {
      bins all_regs[] = {[0:15]}; // los 16 registros posibles
    }

    OPERACION: coverpoint {rd, wr} {
      bins lectura  = {2'b10}; // RD=1, WR=0
      bins escritura = {2'b01}; // RD=0, WR=1
      bins inactivo = {2'b00}; // ningún acceso
      illegal_bins conflicto = {2'b11}; // RD y WR activos simultáneamente
    }

    CRUZADA: cross REG_SELECT, OPERACION;
  endgroup

  function new();
    cg = new();
  endfunction

  function void sample(logic [3:0] s, logic r, logic w);
    sel = s;
    rd = r;
    wr = w;
    cg.sample();
  endfunction
endclass
