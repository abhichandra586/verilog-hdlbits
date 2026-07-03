// HDLBits: 8 D Flip flops
// https://hdlbits.01xz.net/wiki/Dff8

module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);
    
    always @(posedge clk)
        q <= d;

endmodule