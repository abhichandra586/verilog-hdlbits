// HDLBits: 100 digit BCD Adder
// https://hdlbits.01xz.net/wiki/Bcdadd100

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);
    
    wire [100:0] c;
    
    assign c[0]=cin;
    assign cout=c[100];
    
    genvar i;
    generate
        for(i=0;i<=99;i=i+1)
            begin : bcd_adder
                bcd_fadd(
                    .a(a[4*i+3:4*i]),
                    .b(b[4*i+3:4*i]),
                    .cin(c[i]),
                    .cout(c[i+1]),
                    .sum(sum[4*i+3:4*i])
                );
            end
    endgenerate
    
endmodule