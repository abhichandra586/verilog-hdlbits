// HDLBits: 100 bit binary adder
// https://hdlbits.01xz.net/wiki/Adder100

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum
);
    
    assign {cout, sum}=a+b+cin;

endmodule