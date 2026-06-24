// HDLBits: Two Bit Equality
// https://hdlbits.01xz.net/wiki/Mt2015_eq2

module top_module (
    input [1:0] A,
    input [1:0] B,
    output z 
); 
    
    assign z = (A==B) ? 1 : 0;

endmodule