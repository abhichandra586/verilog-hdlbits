// HDLBits: D Flip flop with a gate
// https://hdlbits.01xz.net/wiki/Exams/m2014_q4d

module top_module (
    input clk,
    input in, 
    output reg out
);
    
    wire din;
    assign din = in ^ out;
    always @(posedge clk) begin
        out <= din;
    end

endmodule
