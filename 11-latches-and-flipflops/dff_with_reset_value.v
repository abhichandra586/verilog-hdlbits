// HDLBits: D Flipflop with reset value
// https://hdlbits.01xz.net/wiki/Dff8p

module top_module (
    input wire clk,
    input wire reset,
    input reg [7:0] d,
    output reg [7:0] q
);
    
    always @(negedge clk)
        if(reset)
            q <= 8'h34;
    else q <=d;

endmodule
