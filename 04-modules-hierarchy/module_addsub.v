// HDLBits: Adder-Subtractor
// https://hdlbits.01xz.net/wiki/Module_addsub

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire carry_out;
    wire [31:0] bxor;
    assign bxor = b^{32{sub}};
    
    add16 inst1(
        .a(a[15:0]),
        .b(bxor[15:0]),
        .cin(sub),
        .sum(sum[15:0]),
        .cout(carry_out)
    );
    
    add16 inst2(
        .a(a[31:16]),
        .b(bxor[31:16]),
        .cin(carry_out),
        .sum(sum[31:16]),
        .cout()
    );

endmodule