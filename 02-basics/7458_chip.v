// HDLBits: 7458 Chip
// https://hdlbits.01xz.net/wiki/7458

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);
    
    wire a,b,c,d;
    
    assign a = p1a&p1b&p1c;
    assign b = p2a&p2b;
    assign c = p2c&p2d;
    assign d = p1d&p1e&p1f;
    
    assign p1y = a|d;
    assign p2y = b|c;


endmodule