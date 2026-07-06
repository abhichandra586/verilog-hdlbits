// HDLBits: JK Flip Flop
// https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q7

module top_module (
    input clk,
    input j,
    input k,
    output reg Q
); 
    
    always @(posedge clk) begin
        case({j,k})
            2'b00: Q = Q;
            2'b01: Q = 0;
            2'b10: Q = 1;
            2'b11: Q = ~Q;
            default Q = Q;
        endcase
    end

endmodule
