// HDLBits: Minimum SOP and POS
// https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q2

module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);
    
    assign out_sop = (c & d) | (~a & ~b & c);
    assign out_pos = c & (~a | d) & (~b | d);

endmodule