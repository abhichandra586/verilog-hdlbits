// 3 bit population count
// https://hdlbits.01xz.net/wiki/Popcount3

module top_module( 
    input [2:0] in,
    output [1:0] out
);
    
    assign out = in[0] + in[1] + in[2];

endmodule