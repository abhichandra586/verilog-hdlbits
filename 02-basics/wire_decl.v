// HDLBits: Declaring Wires
// https://hdlbits.01xz.net/wiki/Wire_decl

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
); 
    
    wire x;
    wire y;
    wire z;
    assign x = a&b;
    assign y = c&d;
    assign z = x|y;
    assign out = z;
    assign out_n = ~z;

endmodule