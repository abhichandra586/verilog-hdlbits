module top_module(
    input clk,
    input reset,
    output reg [31:0] q
);

    always @(posedge clk) begin
        if (reset)
            q <= 32'h1;
        else begin
            q <= {1'b0, q[31:1]};
            q[31] <= q[0];
            q[21] <= q[22] ^ q[0];
            q[1] <= q[2] ^ q[0];
            q[0] <= q[1] ^ q[0];
        end
    end

endmodule
