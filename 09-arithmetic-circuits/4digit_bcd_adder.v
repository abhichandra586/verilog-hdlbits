// HDLBits: 4 digit BCD Adder
// https://hdlbits.01xz.net/wiki/Bcdadd4


module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum
);
    
    wire c1,c2,c3;
    
    bcd_fadd inst1(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(c1),
        .sum(sum[3:0])
    );
    
    bcd_fadd inst2(
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c1),
        .cout(c2),
        .sum(sum[7:4])
    );
    
    bcd_fadd inst3(
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(c2),
        .cout(c3),
        .sum(sum[11:8])
    );
    
    bcd_fadd inst4(
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(c3),
        .cout(cout),
        .sum(sum[15:12])
    );

endmodule