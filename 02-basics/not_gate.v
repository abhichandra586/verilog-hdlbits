// HDLBits: Not Gate
// https://hdlbits.01xz.net/wiki/Notgate

module top_module(
    input in,
    output out
);
    
    assign out = ~in;

endmodule