// HDLBits: K map 2: 4 variable
// https://hdlbits.01xz.net/wiki/Kmap2

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out 
); 
    
    assign out = (~a & ~d) | (~b & ~c) | (a & c & d) | (b & c & d);
    
endmodule