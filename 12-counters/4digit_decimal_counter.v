// HDLBits: 4 digit decimal counter
// https://hdlbits.01xz.net/wiki/Countbcd

module top_module (
    input clk,
    input reset,
    output [3:1] ena,
    output [15:0] q
);

    assign ena[1] = (q[3:0]  == 4'd9);
    assign ena[2] = ena[1] && (q[7:4]  == 4'd9);
    assign ena[3] = ena[2] && (q[11:8] == 4'd9);

    decade_counter d0 (.clk(clk), .reset(reset), .enable(1'b1),   .q(q[3:0]));
    decade_counter d1 (.clk(clk), .reset(reset), .enable(ena[1]), .q(q[7:4]));
    decade_counter d2 (.clk(clk), .reset(reset), .enable(ena[2]), .q(q[11:8]));
    decade_counter d3 (.clk(clk), .reset(reset), .enable(ena[3]), .q(q[15:12]));

endmodule

module decade_counter (
    input clk,
    input reset,
    input enable,
    output reg [3:0] q
);
    always @(posedge clk) begin
        if (reset)
            q <= 4'd0;
        else if (enable)
            q <= (q == 4'd9) ? 4'd0 : q + 4'd1;
    end
endmodule
