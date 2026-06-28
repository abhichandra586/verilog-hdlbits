// HDLBits: Full Adder
// http://hdlbits.01xz.net/wiki/Fadd

module top_module( 
    input a, b, cin,
    output cout, sum 
);
    
    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (cin&a);

endmodule