// HDLBits: Four Wires
// https://hdlbits.01xz.net/wiki/Wire4

module top_module( 
    input a,b,c,
    output w,x,y,z
);
    
    assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;

endmodule