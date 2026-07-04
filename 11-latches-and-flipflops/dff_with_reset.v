// HDLBits: D Flip Flop with Reset
// http://hdlbits.01xz.net/wiki/Dff8r

module top_module (
    input wire clk,
    input wire reset,
    input reg [7:0] d,
    output reg [7:0] q
);
    
    always @(posedge clk)
        if(reset)
            q <= 8'b0;
    else q<=d;

endmodule
