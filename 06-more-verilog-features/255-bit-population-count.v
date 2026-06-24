// HDLBits: 255 bit Population Count
// https://hdlbits.01xz.net/wiki/Popcount255

module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    integer i;
    
    always @(*) begin
        out = 8'b0;
        for(i=0;i<=254;i=i+1)
            out = out + in[i];
    end

endmodule