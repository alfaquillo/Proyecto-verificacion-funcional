// Clase para configuración aleatoria
class RandConfig;
    rand bit [1:0] seg_sel;
    rand bit [2:0] m1_sel;
    rand bit [15:0] desp;
    rand bit op;
    rand bit iom;
    rand bit [7:0] data;
    
    constraint c_valid {
        seg_sel inside {[0:3]};
        m1_sel inside {[0:4]};
        desp dist {
            16'h0000 := 1,
            [16'h0001:16'h00FF] := 3,
            [16'h0100:16'hFF00] := 5,
            [16'hFF01:16'hFFFF] := 1
        };
        data dist {
            8'h00 := 1,
            8'hFF := 1,
            8'h55 := 2,
            8'hAA := 2,
            [8'h01:8'hFE] := 4
        };
    }
endclass

// Función para calcular dirección esperada
function automatic [19:0] calc_expected_addr(
    input bit op,
    input bit [1:0] seg_sel,
    input bit [2:0] m1_sel,
    input bit [15:0] desp
);
    bit [15:0] segment, offset;
    
    // Selección de segmento
    case (seg_sel)
        2'b00: segment = dut.CS;
        2'b01: segment = dut.DS;
        2'b10: segment = dut.ES;
        2'b11: segment = dut.SS;
    endcase
    
    // Cálculo de offset
    case (m1_sel)
        3'b000: offset = dut.BX + desp;
        3'b001: offset = dut.SI + desp;
        3'b010: offset = dut.DI + desp;
        3'b011: offset = dut.BP + desp;
        3'b100: offset = dut.SP + desp;
        default: offset = desp;
    endcase
    
    // Modo instrucción usa offset 0
    if (!op) offset = 16'h0000;
    
    return {segment, 4'b0} + offset;
endfunction

// Tarea para prueba aleatoria
task automatic random_test(input int num_tests);
    automatic RandConfig cfg = new();
    automatic int success_count = 0;
    bit [19:0] expected_addr;
    bit [7:0] expected_data;
    
    $display("\n[%0t] Iniciando %0d pruebas aleatorias...", $time, num_tests);
    
    for (int i = 0; i < num_tests; i++) begin
        // Generar configuración aleatoria
        if (!cfg.randomize()) begin
            $error("Error en randomización");
            continue;
        end
        
        // Configurar DUT
        SEG_SEL = cfg.seg_sel;
        M1_SEL = cfg.m1_sel;
        DESP = cfg.desp;
        OP = cfg.op;
        IOM = cfg.iom;
        
        // Calcular dirección esperada
        expected_addr = calc_expected_addr(cfg.op, cfg.seg_sel, cfg.m1_sel, cfg.desp);
        expected_data = cfg.data;
        
        // Prueba de bus de datos (50% probabilidad)
        if ($urandom_range(1)) begin
            test_data_bus(cfg.data, cfg.data, $sformatf("Random Test %0d", i));
        end
        
        // Ejecutar ciclo
        #TEST_DELAY;
        
        // Verificar dirección
        if (A !== expected_addr) begin
            $error("Test %0d: Error dirección - Esperado %h, Obtenido %h",
                  i, expected_addr, A);
        end else begin
            success_count++;
        end
    end
    
    $display("[%0t] Pruebas aleatorias completadas: %0d/%0d éxitos",
            $time, success_count, num_tests);
endtask