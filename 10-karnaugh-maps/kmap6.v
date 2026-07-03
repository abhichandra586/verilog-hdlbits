// HDLBits: K map 6
// https://hdlbits.01xz.net/wiki/Exams/2012_q1g

module top_module (
    input [4:1] x,
    output f
); 
    
    assign f = (~x[2] & ~x[4]) | (x[2] & x[3] & x[4]) | (~x[1] & x[3]);

endmodule