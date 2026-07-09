module top_module(
    input [2:0] SW,
    input [1:0] KEY,
    output [2:0] LEDR
);

    reg [2:0] q;

    always @(posedge KEY[0]) begin
        if (KEY[1])
            q <= SW;
        else begin
            q[0] <= q[2];
            q[1] <= q[0];
            q[2] <= q[2] ^ q[1];
        end
    end

    assign LEDR = q;

endmodule
