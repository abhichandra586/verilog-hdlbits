// HDLBits: Combine circuits A and B
// https://hdlbits.01xz.net/wiki/Mt2015_q4

module mt2015_q4a(
    input x,
    input y,
    output z
);
    assign z = (x^y)&x;
endmodule

module mt2015_q4b(
    input x,
    input y,
    output z
);
    assign z = ~(x^y);
endmodule

module top_module (
    input x,
    input y,
    output z
);
    
    wire z1,z2,z3,z4;
    
    mt2015_q4a IA1(
        .x(x),
        .y(y),
        .z(z1)
    );
    
    mt2015_q4b IB1(
        .x(x),
        .y(y),
        .z(z2)
    );
    
    mt2015_q4a IA2(
        .x(x),
        .y(y),
        .z(z3)
    );
    
    mt2015_q4b IB2(
        .x(x),
        .y(y),
        .z(z4)
    );
    
    assign z = ( z1| z2 ) ^ ( z3 & z4 );

endmodule