// HDLBits: 3 Bit Binary Adder
// https://hdlbits.01xz.net/wiki/Adder3

module fadd( 
    input a, b, cin,
    output cout, sum 
);
    
    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (cin&a);

endmodule

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum
);
    
    wire c1,c2,c3;
    
    fadd inst0(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(c1)
    );
    
    fadd inst1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(sum[1]),
        .cout(c2)
    );
    
    fadd inst2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(sum[2]),
        .cout(c3)
    );
    
    assign cout = {c3,c2,c1};
        
endmodule