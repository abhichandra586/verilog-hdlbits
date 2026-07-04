// HDLBits: D Flip Flop with Asynchronous reset
// https://hdlbits.01xz.net/wiki/Dff8ar

module top_module (
    input clk,
    input areset,
    input [7:0] d,
    output reg [7:0] q
);
    
    always @(posedge clk or posedge areset) begin
        if(areset)
            q <= 0;
        else q <= d;
    end

endmodule
