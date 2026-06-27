// HDLBits: 2:1 Multiplexer
// https://hdlbits.01xz.net/wiki/Mux2to1

module top_module( 
    input a, b, sel,
    output out
);
    
    assign out = (sel==0) ? a:b;

endmodule