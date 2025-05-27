// =============================================================================
// Módulo: GenDir
// =============================================================================
// Descripción:
//   Este módulo genera una dirección de 20 bits combinando registros de segmento,
//   punteros y un desplazamiento, basado en la operación solicitada.
//
//   Si OP = 0, la dirección corresponde a una instrucción (segmento CS + IP).
//   Si OP = 1, la dirección corresponde a datos, calculando la suma entre dos 
//   registros seleccionados, un desplazamiento, y el segmento seleccionado.
//
// Entradas:
//   - OP       : Selección de operación (0=instrucción, 1=datos).
//   - SEG_SEL  : Selector del segmento (MUX de 4 entradas).
//   - M1_SEL   : Selector del primer registro para sumas (MUX de 6 entradas).
//   - M2_SEL   : Selector del segundo registro para sumas (MUX de 6 entradas).
//   - BX, SI, DI, BP, SP : Registros de propósito general (16 bits).
//   - CS, ES, SS, DS     : Registros de segmento (16 bits).
//   - IP       : Registro de puntero de instrucción (16 bits).
//   - DESP     : Desplazamiento (offset) a sumar (16 bits).
//
// Salidas:
//   - DIR      : Dirección efectiva calculada de 20 bits.
//
// Parámetros:
//   Ninguno
// =============================================================================

module GenDir (
    input OP,                // 0=instrucción, 1=datos
    input [1:0] SEG_SEL,     // Selector de segmento
    input [2:0] M1_SEL,      // Selector MUX1 (primer registro)
    input [2:0] M2_SEL,      // Selector MUX2 (segundo registro)
    input [15:0] BX, SI, DI, BP, SP,
    input [15:0] CS, ES, SS, DS,
    input [15:0] IP,
    input [15:0] DESP,
    output wire [19:0] DIR
);

    // Selección de registros para sumas
    wire [15:0] reg1, reg2;
    
    // Multiplexores para escoger registros según M1_SEL y M2_SEL
    Multiplexor6a1de16bits mux1(
        .A(BX), .B(SI), .C(DI), .D(BP), .E(SP), .F(16'b0),
        .SEL(M1_SEL),
        .OUT(reg1)
    );
    
    Multiplexor6a1de16bits mux2(
        .A(BX), .B(SI), .C(DI), .D(BP), .E(SP), .F(16'b0),
        .SEL(M2_SEL),
        .OUT(reg2)
    );

    // Suma de los registros seleccionados
    wire [15:0] sum_regs;
    Sumador16bits suma_registros(
        .A(reg1),
        .B(reg2),
        .OUT(sum_regs)
    );
    
    // Suma final sum_regs + desplazamiento
    wire [15:0] offset;
    Sumador16bits suma_offset(
        .A(sum_regs),
        .B(DESP),
        .OUT(offset)
    );

    // Offset efectivo depende de OP (instrucción o datos)
    wire [15:0] effective_offset = OP ? offset : IP;

    // Selección del segmento según OP y SEG_SEL
    wire [15:0] data_segment;
    Multiplexor4a1de16bits mux_segmento(
        .A(CS), .B(DS), .C(ES), .D(SS),
        .SEL(SEG_SEL),
        .OUT(data_segment)
    );

    // Segmento final usado para el cálculo de dirección
    wire [15:0] segment = OP ? data_segment : CS;

    // Cálculo final de la dirección de 20 bits:
    // segmento desplazado 4 bits a la izquierda + offset efectivo
    assign DIR = ({segment, 4'b0}) + {4'b0, effective_offset};

endmodule
