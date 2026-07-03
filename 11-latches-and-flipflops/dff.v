// HDLBits: D Flip flop
// https://hdlbits.01xz.net/wiki/Dff

module top_module (
    input clk,
    input d,
    output reg q 
);
    
    always @(posedge clk)
        q <= d;
    
endmodule