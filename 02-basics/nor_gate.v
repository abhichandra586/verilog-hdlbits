// HDLBits: NOR Gate
// https://hdlbits.01xz.net/wiki/Norgate

module top_module( 
    input a, 
    input b, 
    output out
);
    
    assign out = ~(a|b);

endmodule