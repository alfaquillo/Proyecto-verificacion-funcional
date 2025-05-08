module prefetch_queue (
    input logic clk,
    input logic rst,
    input logic enqueue,
    input logic dequeue,
    input logic [7:0] data_in,
    output logic [7:0] data_out,
    output logic empty,
    output logic full
);
    logic [7:0] queue [3:0];
    logic [1:0] head, tail;
    logic [2:0] count;

    assign empty = (count == 0);
    assign full = (count == 4);
    assign data_out = queue[head];

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            head <= 0;
            tail <= 0;
            count <= 0;
        end else begin
            if (enqueue && !full) begin
                queue[tail] <= data_in;
                tail <= tail + 1;
                count <= count + 1;
            end
            if (dequeue && !empty) begin
                head <= head + 1;
                count <= count - 1;
            end
        end
    end
endmodule
