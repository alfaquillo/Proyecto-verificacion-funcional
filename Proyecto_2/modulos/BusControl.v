`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 08:30:36 PM
// Design Name: 
// Module Name: BusControl
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


module BusControl (
    input wire WR_n,     // Señal de escritura (activo bajo)
    input wire RD_n,     // Señal de lectura (activo bajo)
    input wire IWR,      // Control escritura interno
    input wire IRD,      // Control lectura interno
    output wire RegEn,   // Enable para registro
    output wire BusEn    // Enable para buffer tri-state
);
    // MUX implícito en las asignaciones
    assign RegEn = (!WR_n && IWR);  // Solo habilitar registro durante escritura
    assign BusEn = (!RD_n && IRD);  // Solo habilitar bus durante lectura
endmodule