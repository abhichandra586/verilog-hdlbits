// HDLBits: Counter - 1000
// https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q7b

module top_module (
    input clk,
    input reset,
    output OneHertz,
    output reg [2:0] c_enable
);

    wire [3:0] Q0, Q1, Q2;

    assign c_enable[0] = 1'b1;
    assign c_enable[1] = (Q0 == 4'd9);
    assign c_enable[2] = (Q0 == 4'd9) && (Q1 == 4'd9);

    assign OneHertz = (Q0 == 4'd9) && (Q1 == 4'd9) && (Q2 == 4'd9);

    bcdcount counter0 (.clk(clk), .reset(reset), .enable(c_enable[0]), .Q(Q0));
    bcdcount counter1 (.clk(clk), .reset(reset), .enable(c_enable[1]), .Q(Q1));
    bcdcount counter2 (.clk(clk), .reset(reset), .enable(c_enable[2]), .Q(Q2));

endmodule
