// HDLBits: K map implemented with a multiplexer
// https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q3

module top_module (
    input c,
    input d,
    output [3:0] mux_in
);
    assign mux_in[0] = c ? 1'b1 : d;
    assign mux_in[1] = 1'b0;
    assign mux_in[2] = d ? 1'b0 : 1'b1;
    assign mux_in[3] = c ? d : 1'b0;
    
endmodule