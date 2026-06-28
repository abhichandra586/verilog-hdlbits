// HDLBits: Half Adder
// https://hdlbits.01xz.net/wiki/Hadd

module top_module( 
    input a, b,
    output cout, sum 
);
    
    assign sum = a^b;
    assign cout= a&b;

endmodule