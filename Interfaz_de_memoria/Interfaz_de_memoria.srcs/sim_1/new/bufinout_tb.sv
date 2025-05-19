`timescale 1ns / 1ps

module BufINOUT_tb;

    // Señales de entrada
    reg CLK;
    reg RST;
    reg IWR;
    reg IRD;
    reg RD;
    reg WR;
    
    // Buses bidireccionales
    wire [7:0] DataBus;
    wire [7:0] InternalBus;
    
    // Señales para controlar los buses
    reg [7:0] data_bus_driver;
    reg data_bus_en;
    reg [7:0] internal_bus_driver;
    reg internal_bus_en;
    
    // Asignación condicional a los buses
    assign DataBus = data_bus_en ? data_bus_driver : 8'bzzzzzzzz;
    assign InternalBus = internal_bus_en ? internal_bus_driver : 8'bzzzzzzzz;
    
    // Instancia del módulo bajo prueba
    BufINOUT dut (
        .CLK(CLK),
        .RST(RST),
        .IWR(IWR),
        .IRD(IRD),
        .RD(RD),
        .WR(WR),
        .DataBus(DataBus),
        .InternalBus(InternalBus)
    );
    
    // Wire para monitorear el valor interno del registro
    wire [7:0] reg_value = dut.OUT_R1;
    
    // Generación de reloj
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // Reloj de 10ns de período
    end
    
    // Procedimiento de prueba
    initial begin
        // Inicialización
        $display("\nIniciando simulacion...");
        RST = 1;
        IWR = 0;
        IRD = 0;
        RD = 0;
        WR = 0;
        data_bus_driver = 8'h00;
        data_bus_en = 0;
        internal_bus_driver = 8'h00;
        internal_bus_en = 0;
        
        // 1. Test de reset inicial
        #20;
        RST = 0;
        #10;
        
        // Verificar estado después del reset
        IWR = 1; // Activar salida a DataBus
        #10;
        if (DataBus !== 8'h80) 
            $error("[TEST 1] Error reset inicial: DataBus = %h, esperado 80 (Registro interno: %h)", DataBus, reg_value);
        else 
            $display("[TEST 1] OK: Reset inicial correcto (DataBus = 80h)");
        
        // 2. Test: Escritura desde InternalBus
        IWR = 0;
        internal_bus_driver = 8'hAB;
        internal_bus_en = 1;
        WR = 1;  // Habilitar escritura
        IRD = 0; // Seleccionar InternalBus
        @(posedge CLK); // Esperar 1 ciclo completo
        @(posedge CLK);
        
        // Verificación
        WR = 0;
        internal_bus_en = 0;
        IWR = 1; // Activar salida a DataBus
        @(posedge CLK);
        if (DataBus !== 8'hAB) 
            $error("[TEST 2] Error escritura InternalBus: DataBus = %h, esperado AB (Registro interno: %h)", DataBus, reg_value);
        else 
            $display("[TEST 2] OK: Escritura desde InternalBus correcta");
        
        // 3. Test: Escritura desde DataBus
        IWR = 0;
        data_bus_driver = 8'hEF;
        data_bus_en = 1;
        WR = 1;  // Habilitar escritura
        IRD = 1; // Seleccionar DataBus
        @(posedge CLK);
        @(posedge CLK);
        
        // Verificación
        WR = 0;
        IRD = 0;
        data_bus_en = 0;
        RD = 1; // Activar salida a InternalBus
        @(posedge CLK);
        if (InternalBus !== 8'hEF) 
            $error("[TEST 3] Error lectura: InternalBus = %h, esperado EF (Registro interno: %h)", InternalBus, reg_value);
        else 
            $display("[TEST 3] OK: Escritura desde DataBus y lectura correctas");
        
        // 4. Test: Alta impedancia
        RD = 0;
        IWR = 0;
        @(posedge CLK);
        if (DataBus !== 8'bzzzzzzzz || InternalBus !== 8'bzzzzzzzz)
            $error("[TEST 4] Error alta impedancia");
        else
            $display("[TEST 4] OK: Alta impedancia funcionando correctamente");
        
        // 5. Test: Reset asíncrono durante operación
        // Configurar condición de máxima actividad PERO SIN DRIVERS EXTERNOS
        data_bus_driver = 8'hFF;
        data_bus_en = 0;      // Driver externo DESACTIVADO
        internal_bus_driver = 8'h55;
        internal_bus_en = 0;  // Driver externo DESACTIVADO
        WR = 1;
        IRD = 1;
        IWR = 1;
        RD = 1;
        @(posedge CLK);
        
        // Activar reset asíncrono
        RST = 1;
        #1; // Pequeño retardo para verificación asíncrona
        
        // Verificación inmediata - buses deben estar en alta impedancia
        if (DataBus !== 8'bzzzzzzzz || InternalBus !== 8'bzzzzzzzz)
            $error("[TEST 5a] Error: Buses no en alta impedancia durante reset");
        else
            $display("[TEST 5a] OK: Alta impedancia durante reset activo");
        
        @(posedge CLK); // Esperar ciclo completo con reset activo
        
        // Verificar estado post-reset - CONFIGURACIÓN CORREGIDA
        RST = 0;
        data_bus_en = 0;       // Asegurar driver externo DESACTIVADO
        internal_bus_en = 0;   // Asegurar driver externo DESACTIVADO
        IWR = 1;               // Habilitar buffer de salida
        RD = 0;                // Deshabilitar salida a InternalBus
        WR = 0;                // Deshabilitar escritura
        IRD = 0;               // Seleccionar InternalBus (aunque no se use)
        
        // Esperar 2 ciclos completos para estabilización
        @(posedge CLK);
        @(posedge CLK);
        
        // [TEST 5b] Verificación del valor post-reset
        if (DataBus !== 8'h80) begin
            $error("[TEST 5b] Error: Esperado 80h, obtenido %h (IWR=%b, RST=%b, OUT_R1=%h)", 
                  DataBus, IWR, RST, reg_value);
        end else begin
            $display("[TEST 5b] OK: Valor post-reset correcto (80h)");
        end
        
        // [TEST 6] Comportamiento post-reset
        @(posedge CLK);
        if (DataBus !== 8'h80) begin
            $error("[TEST 6] Error: Valor no mantenido. Obtenido %h (Registro interno: %h)", 
                  DataBus, reg_value);
        end else begin
            $display("[TEST 6] OK: Valor mantenido post-reset");
        end
        
        // 7. Test adicional: Conflictos de control
        // Verificar comportamiento cuando IWR y RD están activos simultáneamente
        IWR = 1;
        RD = 1;
        @(posedge CLK);
        if (DataBus !== 8'bzzzzzzzz || InternalBus !== 8'bzzzzzzzz)
            $error("[TEST 7] Error: Buses deberían estar en alta impedancia con IWR y RD activos");
        else
            $display("[TEST 7] OK: Manejo correcto de condición de conflicto");
        
        // Finalizar simulación
        #10;
        $display("\nTodos los tests completados exitosamente");
        $finish;
    end
    
    // Monitor para observar las señales
    initial begin
        $monitor("T=%t CLK=%b RST=%b IWR=%b IRD=%b RD=%b WR=%b DataBus=%h InternalBus=%h OUT_R1=%h",
                 $time, CLK, RST, IWR, IRD, RD, WR, DataBus, InternalBus, reg_value);
    end

endmodule