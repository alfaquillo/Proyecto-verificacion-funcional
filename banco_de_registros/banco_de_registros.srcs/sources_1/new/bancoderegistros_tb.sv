`timescale 1ns/1ps

module tb_bancoderegistros;
    // =============================================
    // 1. Señales de interfaz y generación de reloj
    // =============================================
    logic CLK = 0, RST;
    logic RD, WR;
    logic [3:0] SEL;
    wire [15:0] DATA;

    // Control del bus bidireccional
    logic [15:0] data_drive;
    logic data_drive_en;
    assign DATA = data_drive_en ? data_drive : 16'bz;

    // Generación de reloj
    always #5 CLK = ~CLK;

    // =============================================
    // 2. Instanciación del DUT con módulos mejorados
    // =============================================
    bancoderegistros dut(
        .CLK(CLK),
        .RST(RST),
        .RD(RD),
        .WR(WR),
        .SEL(SEL),
        .DATA(DATA)
    );

    // =============================================
    // 3. Modelado de referencia y cobertura
    // =============================================
    // Scoreboard mejorado
    class BancoRegistrosScoreboard;
        logic [15:0] modelo[16]; // 16 registros (8-bit y 16-bit combinados)

        function void reset();
            foreach(modelo[i]) modelo[i] = 16'h0000;
        endfunction

        function void write(logic [3:0] sel, logic [15:0] data);
            // Manejo especial para registros de 8-bit
            case(sel)
                4'h0: modelo[sel][7:0] = data[7:0];  // AL
                4'h1: modelo[sel][7:0] = data[7:0];  // CL
                // ... otros registros bajos
                4'h8: {modelo[8][15:8], modelo[0][7:0]} = data; // AX (AH+AL)
                // ... otros mapeos
                default: modelo[sel] = data; // 16-bit
            endcase
        endfunction

        function void check(logic [3:0] sel, logic [15:0] dut_data);
            if (modelo[sel] !== dut_data) begin
                $error("ERROR: Reg %0d -> Esperado: %h, Leído: %h", 
                      sel, modelo[sel], dut_data);
            end
        endfunction
    endclass

    // Sistema de cobertura mejorado
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

    // =============================================
    // 4. Inicialización y secuencia de pruebas
    // =============================================
    BancoRegistrosScoreboard sb = new();
    cg_registros cv = new();

    initial begin
        // ----- Fase 1: Reset -----
        RST = 1;
        {RD, WR} = 0;
        data_drive_en = 0;
        repeat(2) @(posedge CLK);
        
        sb.reset(); // Inicializar modelo
        RST = 0;
        @(posedge CLK);

        // ----- Fase 2: Prueba de escritura/lectura -----
        $display("\n=== TEST 1: Escritura/Lectura básica ===");
        test_write_read(4'h8, 16'h1234); // AX
        test_write_read(4'h9, 16'h5678); // CX
        test_write_read(4'h0, 16'h00AB); // AL
        test_write_read(4'h4, 16'h00CD); // BH

        // ----- Fase 3: Prueba de bordes -----
        $display("\n=== TEST 2: Casos límite ===");
        test_write_read(4'hF, 16'hFFFF); // DI
        test_write_read(4'h8, 16'h0000); // AX

        // ----- Fase 4: Prueba aleatoria -----
        $display("\n=== TEST 3: Escrituras aleatorias ===");
        repeat(20) begin
            automatic logic [3:0] rand_sel = $urandom_range(0, 15);
            automatic logic [15:0] rand_data = $urandom();
            test_write_read(rand_sel, rand_data);
        end

        // ----- Finalización -----
        $display("\n=== Cobertura final ===");
        $display("Registros: %0.2f%%", cv.reg_sel.get_coverage());
        $display("Operaciones: %0.2f%%", cv.ops.get_coverage());
        $display("Cruces: %0.2f%%", cv.cruzado.get_coverage());

        $finish();
    end

    // =============================================
    // 5. Tareas de prueba automatizadas
    // =============================================
task test_write_read(input [3:0] sel, input [15:0] data);
    // Escritura
    @(negedge CLK); // Sincronizar en flanco negativo
    SEL = sel;
    data_drive = data;
    WR = 1;
    data_drive_en = 1;
    
    @(negedge CLK); // Esperar ciclo completo
    WR = 0;
    data_drive_en = 0;
    
    // Actualizar modelo
    sb.write(sel, data);
    
    // Lectura (esperar 1 ciclo adicional)
    @(negedge CLK);
    RD = 1;
    #1; // Pequeño retardo para estabilización
    
    // Verificación
    sb.check(sel, DATA);
    
    @(negedge CLK);
    RD = 0;
endtask

    // =============================================
    // 6. Monitoreo adicional y checks
    // =============================================
    // Detección de conflictos en el bus
    always @(posedge CLK) begin
        if (DATA === 16'bz && RD) 
            $warning("Lectura con bus en alta impedancia");
    end

    // Verificación de reset
endmodule