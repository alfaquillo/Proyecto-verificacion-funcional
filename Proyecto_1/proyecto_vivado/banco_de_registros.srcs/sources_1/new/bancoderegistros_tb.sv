`timescale 1ns/1ps

`include "banco_registros_scoreboard.sv"
`include "banco_registros_coverage.sv"

module bancoderegistros_tb;
    // 1. Señales de interfaz
    logic CLK = 0, RST;
    logic RD, WR;
    logic [3:0] SEL;
    wire [15:0] DATA;
    
    // Control del bus bidireccional
    logic [15:0] data_drive;
    logic data_drive_en;
    assign DATA = data_drive_en ? data_drive : 16'bz;
    
    // 2. Instanciación del DUT
    bancoderegistros dut(.*);  // Conexión automática por nombre
    
    // 3. Instancias de verificacion
    BancoRegistrosScoreboard sb = new();
    cg_registros cv = new();
    
    // 4. Generación de reloj
    always #5 CLK = ~CLK;
    
    // 5. Tareas comunes
    task apply_reset();
        RST = 1;
        {RD, WR} = 0;
        data_drive_en = 0;
        repeat(4) @(posedge CLK);
        RST = 0;
        sb.reset();
        $display("[TB] Reset aplicado");
    endtask
    
    // (Otras tareas de test se mantienen iguales...)
    
    // 6. Secuencia de pruebas principal
    initial begin
        $timeformat(-9, 2, " ns", 10);
        apply_reset();
        
        // Ejemplo de prueba con cobertura
        test_write_read(4'h8, 16'h1234);
        cv.sample(SEL, DATA, {RD,WR});
        
        // Finalización
        print_coverage();
        $finish();
    end
    
    // 7. Monitoreo automático
    always @(posedge CLK) begin
        automatic bit sample_cond = (RD || WR);
        cv.sample_cond(sample_cond);
        
        if(RD) begin
            sb.check(SEL, DATA);
        end
    end
    
    function void print_coverage();
        $display("\n=== Resumen Cobertura ===");
        $display("Registros:  %0.2f%%", cv.reg_sel.get_coverage());
        $display("Operaciones: %0.2f%%", cv.ops.get_coverage());
        $display("Valores:    %0.2f%%", cv.data_values.get_coverage());
        $display("Cruces:     %0.2f%%", cv.cruzado.get_coverage());
    endfunction
endmodule