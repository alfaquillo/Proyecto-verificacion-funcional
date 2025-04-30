`timescale 1ns/1ps

module banco_registros_scoreboard(
    input        clk,
    input        rst,
    input [3:0]  sel,
    input [15:0] data_in,
    input        wr_en,
    input        rd_en,
    input [15:0] dut_data
);
    // Modelo interno de registros
    reg [7:0] AL, CL, DL, BL;
    reg [7:0] AH, CH, DH, BH;
    reg [15:0] SP, BP, SI, DI;

    // Actualización del modelo
    always @(posedge clk) begin
        if (rst) begin
            AL <= 0; CL <= 0; DL <= 0; BL <= 0;
            AH <= 0; CH <= 0; DH <= 0; BH <= 0;
            SP <= 0; BP <= 0; SI <= 0; DI <= 0;
        end
        else if (wr_en) begin
            case (sel)
                4'h0: AL <= data_in[7:0];
                4'h1: CL <= data_in[7:0];
                4'h2: DL <= data_in[7:0];
                4'h3: BL <= data_in[7:0];
                4'h4: AH <= data_in[7:0];
                4'h5: CH <= data_in[7:0];
                4'h6: DH <= data_in[7:0];
                4'h7: BH <= data_in[7:0];
                4'h8: {AH, AL} <= data_in;
                4'h9: {CH, CL} <= data_in;
                4'hA: {DH, DL} <= data_in;
                4'hB: {BH, BL} <= data_in;
                4'hC: SP <= data_in;
                4'hD: BP <= data_in;
                4'hE: SI <= data_in;
                4'hF: DI <= data_in;
            endcase
        end
    end

    // Generación de valor esperado
    function automatic [15:0] get_expected_value(input [3:0] sel);
        case (sel)
            4'h0: return {8'b0, AL};
            4'h1: return {8'b0, CL};
            4'h2: return {8'b0, DL};
            4'h3: return {8'b0, BL};
            4'h4: return {8'b0, AH};
            4'h5: return {8'b0, CH};
            4'h6: return {8'b0, DH};
            4'h7: return {8'b0, BH};
            4'h8: return {AH, AL};
            4'h9: return {CH, CL};
            4'hA: return {DH, DL};
            4'hB: return {BH, BL};
            4'hC: return SP;
            4'hD: return BP;
            4'hE: return SI;
            4'hF: return DI;
        endcase
    endfunction

    // Verificación durante lectura
    always @(posedge clk) begin
        if (rd_en && !rst) begin
            automatic [15:0] expected = get_expected_value(sel);
            if (dut_data !== expected) begin
                $error("[%0t] Error en reg %0h: Esperado=%h, Leído=%h",
                      $time, sel, expected, dut_data);
            end
            else begin
                $display("[%0t] Reg %0h OK: %h", $time, sel, dut_data);
            end
        end
    end
endmodule