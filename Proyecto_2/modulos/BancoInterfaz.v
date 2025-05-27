// =============================================================================
// Módulo: BancoInterfaz8088
// =============================================================================
// Descripción:
//   Banco principal de interfaz para un microprocesador tipo 8088. Incluye
//   manejo de registros de segmento, generación de direcciones físicas,
//   buffer bidireccional para el bus de datos, cola de instrucciones (prefetch queue),
//   registros de instrucción (IP), control de bus y manejo de señales de interrupción.
//
// Entradas:
//   - CLK         : Reloj del sistema.
//   - RST         : Reset asincrónico.
//   - IOM, DTR, DEN, ALE, RD, WR, HOLD : Señales de control del bus y operación.
//   - INTR, NMI   : Señales de interrupción externa.
//   - BX, SI, DI, BP, SP : Registros de propósito general de 16 bits.
//   - SEG_SEL     : Selector de segmento (2 bits).
//   - M1_SEL, M2_SEL : Selectores para multiplexores internos (3 bits).
//   - DESP        : Desplazamiento para cálculo de direcciones.
//   - OP          : Indica tipo de operación (instrucción o dato).
//   - ENA_CS, ENA_DS, ENA_ES, ENA_SS : Enable para registros de segmento.
//   - D_CS, D_DS, D_ES, D_SS : Datos para registros de segmento.
//   - QUEUE_ENA   : Habilitación para la cola de instrucciones.
//   - QUEUE_IN    : Entrada de datos para la cola de instrucciones.
//
// Salidas:
//   - HLDA        : Señal de bus hold acknowledge.
//   - AD          : Bus bidireccional de datos/direcciones de 8 bits.
//   - A           : Dirección física de 20 bits calculada.
//   - INTA        : Señal de acknowledge de interrupción.
//   - QUEUE_OUT   : Salida de datos de la cola de instrucciones (32 bits).
//
// Parámetros:
//   Ninguno
// =============================================================================

module BancoInterfaz8088 (
    input CLK,
    input RST,
    
    // Señales de control
    input IOM,
    input DTR,
    input DEN,
    input ALE,
    input RD,
    input WR,
    input HOLD,
    output HLDA,
    
    // Bus de direcciones/datos
    inout [7:0] AD,
    output [19:0] A,
    
    // Interrupciones
    input INTR,
    input NMI,
    output INTA,
    
    // Registros de propósito general
    input [15:0] BX, SI, DI, BP, SP,
    
    // Señales de control adicionales
    input [1:0] SEG_SEL,
    input [2:0] M1_SEL,
    input [2:0] M2_SEL,
    input [15:0] DESP,
    input OP,
    
    // Control de registros de segmento
    input ENA_CS,
    input ENA_DS,
    input ENA_ES,
    input ENA_SS,
    input [15:0] D_CS,
    input [15:0] D_DS,
    input [15:0] D_ES,
    input [15:0] D_SS,
    
    // Cola de instrucciones
    input QUEUE_ENA,
    input [7:0] QUEUE_IN,
    output [31:0] QUEUE_OUT
);

    // Señales internas
    wire [15:0] CS, DS, ES, SS;
    wire [19:0] physical_addr;
    wire [7:0] internal_data_bus;
    wire buffer_enable;
    
    // Instancia del banco de registros de segmento
    BancodeRegistrosSegmento reg_segmentos (
        .CLK(CLK),
        .RST(RST),
        .ENA_CS(ENA_CS),
        .ENA_DS(ENA_DS),
        .ENA_ES(ENA_ES),
        .ENA_SS(ENA_SS),
        .D_CS(D_CS),
        .D_DS(D_DS),
        .D_ES(D_ES),
        .D_SS(D_SS),
        .Q_CS(CS),
        .Q_DS(DS),
        .Q_ES(ES),
        .Q_SS(SS)
    );
    
    // Instancia del generador de direcciones
    GenDir generador_direcciones (
        .OP(OP),
        .SEG_SEL(SEG_SEL),
        .M1_SEL(M1_SEL),
        .M2_SEL(M2_SEL),
        .BX(BX),
        .SI(SI),
        .DI(DI),
        .BP(BP),
        .SP(SP),
        .CS(CS),
        .ES(ES),
        .SS(SS),
        .DS(DS),
        .IP(16'h0000), 
        .DESP(DESP),
        .DIR(physical_addr)
    );
    
    // Buffer bidireccional para el bus de datos
    BufINOUT buffer_datos (
        .CLK(CLK),
        .RST(RST),
        .IWR(DTR & ~DEN),
        .IRD(~DTR & ~DEN),
        .RD(RD),
        .WR(WR),
        .DataBus(AD),
        .InternalBus(internal_data_bus)
    );
    
    // Cola de instrucciones (prefetch queue)
    queue cola_instrucciones (
        .CLK(CLK),
        .RST(RST),
        .ENA(QUEUE_ENA),
        .DATAIN(QUEUE_IN),
        .DATAOUT(QUEUE_OUT)
    );
    
    // Registro de instrucción (IP) 
    wire [15:0] IP_out;
    RegistroIP registro_ip (
        .CLK(CLK),
        .RST(RST),
        .ENA(1'b1), 
        .SEL(1'b1), 
        .D(physical_addr[15:0]), // dirección calculada
        .Q(IP_out)
    );
    
    // Control de bus y HLDA
    reg hlda_reg;
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            hlda_reg <= 1'b0;
        end else begin
            hlda_reg <= HOLD;
        end
    end
    assign HLDA = hlda_reg;
    
    // Interrupciones 
    reg inta_reg;
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            inta_reg <= 1'b0;
        end else begin
            inta_reg <= INTR & ~HLDA;
        end
    end
    assign INTA = inta_reg;
    
    assign A = physical_addr;

endmodule

endmodule
