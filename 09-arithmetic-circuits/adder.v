// HDLBits: Adder
// https://hdlbits.01xz.net/wiki/Exams/m2014_q4j

module fadd( 
    input a, b, cin,
    output cout, sum 
);
    
    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (cin&a);

endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum
);
    
    wire c[4:0];
    assign c[0]=0;
    assign sum[4]=c[4];
    
    genvar i;
    generate
        for(i=0;i<=3;i=i+1) begin: fadd_inst
            fadd inst(
                .a(x[i]),
                .b(y[i]),
                .cin(c[i]),
                .sum(sum[i]),
                .cout(c[i+1])
            );
        end
    endgenerate

endmodule