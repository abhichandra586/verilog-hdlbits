// HDLBits: 100 bit binary adder
// https://hdlbits.01xz.net/wiki/Adder100i

module fadd(
    input a,b,cin,
    output sum,cout
);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
endmodule


module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum
);
        
    wire [100:0] c;
        
    assign c[0]=cin;
        
    genvar i;
    generate
        for(i=0;i<=99;i=i+1)
            begin : Adder_100
                fadd inst(
                    .a(a[i]),
                    .b(b[i]),
                    .cin(c[i]),
                    .sum(sum[i]),
                    .cout(c[i+1])
                );
            end
    endgenerate
assign cout = c[100:1];

endmodule