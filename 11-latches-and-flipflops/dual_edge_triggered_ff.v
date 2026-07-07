// Dual edge triggered flipflop
// https://hdlbits.01xz.net/wiki/Dualedge

module top_module (
    input clk,
    input d,
    output q
);
    reg qp, qn;
    always @(posedge clk) qp <= d;
    always @(negedge clk) qn <= d;
    assign q = clk ? qp : qn;

endmodule
