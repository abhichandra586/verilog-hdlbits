// HDLBits: K map 5
// https://hdlbits.01xz.net/wiki/Exams/m2014_q3

module top_module (
    input [4:1] x, 
    output f
);
    
    assign f = (~x[1] & x[3]) | (x[2] & x[4]);

endmodule