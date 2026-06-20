// HDLBits: Module
// https://hdlbits.01xz.net/wiki/Module

module top_module ( 
    input a,
    input b,
    output out
);
    
    mod_a inst1(
        .in1(a),
        .in2(b),
        .out(out)
    );
 

endmodule