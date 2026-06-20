// HDLBits: Module add
// https://hdlbits.01xz.net/wiki/Module_add

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout_one;
    wire [15:0] sum1;
    wire [15:0] sum2;
    
    add16 inst1(
        .a(a[15:0]),
        .b(b[15:0]),
        .sum(sum1),
        .cin(1'b0),
        .cout(cout_one)
    );
    
    add16 inst2(
        .a(a[31:16]),
        .b(b[31:16]),
        .sum(sum2),
        .cin(cout_one),
        .cout()
    );
    
    assign sum={sum2,sum1};

endmodule