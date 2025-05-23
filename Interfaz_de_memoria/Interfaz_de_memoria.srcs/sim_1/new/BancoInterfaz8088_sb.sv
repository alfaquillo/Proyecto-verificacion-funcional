`timescale 1ns / 1ps

module BancoInterfaz8088_scoreboard (
    input CLK,
    input RST,
    input [19:0] A,
    input [7:0] AD,
    input INTA,
    input HLDA,
    input [31:0] QUEUE_OUT,
    input [7:0] internal_data_bus
);

    // Resultados de pruebas
    typedef struct {
        string test_name;
        bit passed;
        string message;
    } test_result;

    test_result results[$];
    int total_tests = 0;
    int passed_tests = 0;
    int failed_tests = 0;

    // Verificación de dirección
    task check_address(
        input [19:0] expected,
        input [19:0] actual,
        input string test_name
    );
        test_result t;
        t.test_name = test_name;
        
        if (expected === actual) begin
            t.passed = 1;
            t.message = $sformatf("Direccion correcta: %h", actual);
        end else begin
            t.passed = 0;
            t.message = $sformatf("Error: Esperado %h, Obtenido %h", expected, actual);
        end
        
        store_result(t);
    endtask

    // Verificación de datos
    task check_data(
        input [7:0] expected,
        input [7:0] actual,
        input string test_name
    );
        test_result t;
        t.test_name = test_name;
        
        if (expected === actual) begin
            t.passed = 1;
            t.message = $sformatf("Dato correcto: %h", actual);
        end else begin
            t.passed = 0;
            t.message = $sformatf("Error: Esperado %h, Obtenido %h", expected, actual);
        end
        
        store_result(t);
    endtask

    // Verificación de cola
    task check_queue(
        input [31:0] expected,
        input [31:0] actual,
        input string test_name
    );
        test_result t;
        t.test_name = test_name;
        
        if (expected === actual) begin
            t.passed = 1;
            t.message = $sformatf("Cola correcta: %h", actual);
        end else begin
            t.passed = 0;
            t.message = $sformatf("Error: Esperado %h, Obtenido %h", expected, actual);
        end
        
        store_result(t);
    endtask

    // Verificación de señal de control
    task check_control_signal(
        input expected,
        input actual,
        input string signal_name,
        input string test_name
    );
        test_result t;
        t.test_name = $sformatf("%s - %s", test_name, signal_name);
        
        if (expected === actual) begin
            t.passed = 1;
            t.message = $sformatf("Señal %s correcta: %b", signal_name, actual);
        end else begin
            t.passed = 0;
            t.message = $sformatf("Error %s: Esperado %b, Obtenido %b", 
                                 signal_name, expected, actual);
        end
        
        store_result(t);
    endtask

    // Almacenar resultado
    function void store_result(test_result t);
        results.push_back(t);
        total_tests++;
        if (t.passed) passed_tests++; else failed_tests++;
    endfunction

    // Reporte final
    function void report();
        $display("\n--- REPORTE FINAL ---");
        $display("Total pruebas: %0d", total_tests);
        $display("Pruebas exitosas: %0d", passed_tests);
        $display("Pruebas fallidas: %0d", failed_tests);
    //    $display("Cobertura: %.2f%%", $root.coverage.get_coverage());
        
        if (failed_tests > 0) begin
            $display("\nDetalle de fallas:");
            foreach (results[i]) begin
                if (!results[i].passed) begin
                    $display("[%0d] %s: %s", i+1, results[i].test_name, results[i].message);
                end
            end
        end
        
       //$display("\nResumen de cobertura:");
      //  $display(" - Señales control: %.2f%%", $root.coverage.ctrl_cg.get_coverage());
      // $display(" - Seleccion segmento: %.2f%%", $root.coverage.seg_cg.get_coverage());
       //$display(" - Seleccion registro: %.2f%%", $root.ccoverage.reg_cg.get_coverage());
       // $display(" - Habilitacion registro: %.2f%%", $root.coverage.ena_cg.get_coverage());
      //   $display("------------------------");
    endfunction

endmodule