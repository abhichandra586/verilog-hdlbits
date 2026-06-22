// HDLBits: Carry Select Adder
// https://hdlbits.01xz.net/wiki/Module_cseladd

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire [15:0] sum1;
    wire [15:0] sum2;
    wire [15:0] sum3;
    wire carry_out;
    
    add16 inst1(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum1),
        .cout(carry_out)
    );
    
    add16 inst2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum2),
        .cout()
    );
    
    add16 inst3(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum3),
        .cout()
    );
    
    assign sum = (carry_out==1'b0) ? {sum2,sum1} : {sum3,sum1} ;

endmodule