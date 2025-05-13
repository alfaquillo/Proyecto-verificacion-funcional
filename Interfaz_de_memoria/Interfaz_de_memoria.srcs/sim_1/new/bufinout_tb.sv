`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:24:21
// Design Name: 
// Module Name: bufinout_tb
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
    
    // Generación de reloj
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // Reloj de 10ns de período
    end
    
 // Procedimiento de prueba CORREGIDO
    initial begin
        // Inicialización
        RST = 1;
        IWR = 0;
        IRD = 0;
        RD = 0;
        WR = 0;
        data_bus_driver = 8'h00;
        data_bus_en = 0;
        internal_bus_driver = 8'h00;
        internal_bus_en = 0;
        
        // 1. Test de reset
        #20;
        RST = 0;
        #10;
        
        // Verificación reset
        IWR = 1; // Activar salida a DataBus
        #10;
        if (DataBus !== 8'h80) $error("Error reset: DataBus = %h, esperado 80", DataBus);
        else $display("Test 1: Reset funcionando correctamente");
        
        // 2. Test: Escritura desde InternalBus
        IWR = 0;
        internal_bus_driver = 8'hAB;
        internal_bus_en = 1;
        IRD = 0; // Seleccionar InternalBus
        WR = 1;  // Habilitar escritura
        #20;
        
        // Verificación
        WR = 0;
        internal_bus_en = 0;
        IWR = 1; // Activar salida a DataBus
        #10;
        if (DataBus !== 8'hAB) $error("Error escritura InternalBus: DataBus = %h, esperado AB", DataBus);
        else $display("Test 2: Escritura desde InternalBus correcta");
        
        // 3. Test: Escritura desde DataBus
        IWR = 0;
        data_bus_driver = 8'hEF;
        data_bus_en = 1;
        IRD = 1; // Seleccionar DataBus
        WR = 1;  // Habilitar escritura
        #20;
        
        // Verificación
        WR = 0;
        IRD = 0;
        data_bus_en = 0;
        RD = 1; // Activar salida a InternalBus
        #10;
        if (InternalBus !== 8'hEF) $error("Error lectura: InternalBus = %h, esperado EF", InternalBus);
        else $display("Test 3: Escritura desde DataBus y lectura correctas");
        
        // 4. Test: Alta impedancia
        RD = 0;
        IWR = 0;
        #10;
        if (DataBus !== 8'bzzzzzzzz || InternalBus !== 8'bzzzzzzzz)
            $error("Error alta impedancia");
        else
            $display("Test 4: Alta impedancia funcionando correctamente");
        
        // Test de conflicto de buses
        data_bus_driver = 8'h11;
        data_bus_en = 1;
        internal_bus_driver = 8'h22;
        internal_bus_en = 1;
        #10;
        if (DataBus === 8'hXX || InternalBus === 8'hXX)
            $display("Advertencia: Conflicto de buses detectado (comportamiento esperado)");
        end
            
            
             initial begin
        // Condición de máxima actividad
        data_bus_driver = 8'hFF;
        data_bus_en = 1;
        internal_bus_driver = 8'h55;
        internal_bus_en = 1;
        WR = 1;
        IRD = 1;
        IWR = 1;
        RD = 1;
        #5;
        
        // Activar reset
        RST = 1;
        #1; // Verificación inmediata
        
        // Los buses DEBEN estar en alta impedancia inmediatamente
        if (DataBus !== 8'bzzzzzzzz || InternalBus !== 8'bzzzzzzzz)
            $error("Error: Buses no en alta impedancia durante reset");
        
        #9; // Completar ciclo de reloj
        
        // Verificar estado post-reset
        IWR = 1;
        RD = 0;
        if (DataBus !== 8'h80)
            $error("Error: Registro no resetado correctamente");
        else
            $display("Reset asíncrono funcionando correctamente");
    end
            
        // Finalizar simulación
        #10;
        $display("Todos los tests completados");
        $finish;
    end
    
    // Monitor para observar las señales
    initial begin
        $monitor("Tiempo: %t | CLK=%b RST=%b IWR=%b IRD=%b RD=%b WR=%b DataBus=%h InternalBus=%h",
                 $time, CLK, RST, IWR, IRD, RD, WR, DataBus, InternalBus);
    end

endmodule
