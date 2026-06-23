// HDLBits: Always Case 2
// https://hdlbits.01xz.net/wiki/Always_case2

module top_module (
    input [3:0] in,
    output reg [1:0] pos
);
    
    always @(*) begin
        case (in)
            4'b0001: pos = 00;
            4'b0010: pos = 01;
            4'b0011: pos = 00;
            4'b0100: pos = 10;
            4'b0101: pos = 00;
            4'b0110: pos = 01;
            4'b0111: pos = 00;
            4'b1000: pos = 11;
            4'b1001: pos = 00;
            4'b1010: pos = 01;
            4'b1011: pos = 00;
            4'b1100: pos = 10;
            4'b1101: pos = 00;
            4'b1110: pos = 01;
            4'b1111: pos = 00;
            default: pos = 00;
        endcase
    end

endmodule