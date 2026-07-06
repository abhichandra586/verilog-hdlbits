// 2 Multiplexers and D Flip Flop together
// https://hdlbits.01xz.net/wiki/Exams/2014_q4a

module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);
    
    always @(posedge clk) begin
        Q <= L ? R : ( E ? w : Q );
    end

endmodule
