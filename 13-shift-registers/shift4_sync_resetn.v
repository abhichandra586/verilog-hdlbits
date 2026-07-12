// HDLBits: 4 bit shift register with synchronous reset
// https://hdlbits.01xz.net/wiki/Exams/m2014_q4k

module top_module (
    input clk,
    input resetn,
    input in,
    output out
);
    
    reg [3:0] i;
    always @(posedge clk) begin
        if(!resetn)
            i <= 4'b0;
        else
            i <= {i[2:0],in};
    end
    
    assign out = i[3];

endmodule
