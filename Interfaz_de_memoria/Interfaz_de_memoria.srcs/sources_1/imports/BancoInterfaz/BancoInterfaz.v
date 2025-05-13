module BancoInterfaz8088 (
    input CLK,
    input RST,
    input [7:0] DataBus,
    inout [7:0] InternalBus,
    input RD,
    input WR,
    input IOR,
    input IOW,
    input M_IO,      // Memoria (1) o I/O (0)
    input [19:0] DIR, // Dirección física de 20 bits
    output [15:0] AddrBus,
    output ALE,
    output DEN,
    output DT_R
);

    // Registros de dirección (latch)
    reg [19:0] AddrLatch;
    
    // Buffer de datos bidireccional
    BufINOUT DataBuffer (
        .CLK(CLK),
        .RST(RST),
        .IWR(IOW | WR),
        .IRD(IOR | RD),
        .RD(RD),
        .WR(WR),
        .DataBus(DataBus),
        .InternalBus(InternalBus)
    );

    // Generación de señales de control
    assign ALE = ~(RD | WR | IOR | IOW);  // Address Latch Enable
    assign DEN = (RD | WR | IOR | IOW);    // Data Enable
    assign DT_R = WR | IOW;                // Data Transmit/Receive

    // Latch de dirección en flanco negativo de ALE
    always @(negedge ALE or posedge RST) begin
        if (RST)
            AddrLatch <= 20'h00000;
        else
            AddrLatch <= DIR;
    end

    // Multiplexor de dirección (8088 usa bus de 16 bits)
    assign AddrBus = M_IO ? AddrLatch[15:0] : {4'b0000, AddrLatch[11:0]};

    // Lógica de selección de memoria/I/O
    wire MemRead = RD & M_IO;
    wire MemWrite = WR & M_IO;
    wire IORead = IOR & ~M_IO;
    wire IOWrite = IOW & ~M_IO;

endmodule