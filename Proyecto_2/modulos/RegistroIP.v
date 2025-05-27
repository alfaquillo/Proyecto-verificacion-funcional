// =============================================================================
// Módulo: RegistroIP
// =============================================================================
// Descripción:
//   Este módulo implementa un registro de 16 bits con dos modos de operación 
//   seleccionados mediante la señal SEL:
//     - SEL = 0: el registro se incrementa automáticamente (modo contador).
//     - SEL = 1: el registro carga directamente el valor de entrada D.
//   El valor se actualiza en el flanco positivo del reloj si ENA está activo.
//   El reset es asíncrono y reinicia el registro a 0x0000.
//
// Entradas:
//   - CLK : Señal de reloj.
//   - RST : Señal de reset asíncrono (positivo).
//   - ENA : Habilitación para actualizar el valor del registro.
//   - SEL : Selector de modo de operación (0 = incremento, 1 = carga directa).
//   - D   : Dato de entrada de 16 bits.
//
// Salidas:
//   - Q   : Valor actual del registro (16 bits).
//
// Parámetros:
//   Ninguno
// =============================================================================

module RegistroIP (CLK, RST, ENA, SEL, D, Q);

    input CLK, RST, ENA, SEL;
    input [15:0] D;
    output reg [15:0] Q;

    reg [15:0] RIN;

    // Lógica combinacional para seleccionar el dato a cargar
    always @(Q or D or SEL)
        case (SEL)
            1'b0: RIN = Q + 1;  // Modo contador: incrementa el valor actual
            1'b1: RIN = D;      // Modo carga directa: carga el valor D
        endcase

    always @(posedge CLK or posedge RST)
        if (RST)
            Q = 16'h0000;       // Reset del registro a cero
        else if (ENA)
            Q = RIN;            // Carga el valor seleccionado si ENA está activo
        else
            Q = Q;              // Mantiene el valor actual

endmodule

