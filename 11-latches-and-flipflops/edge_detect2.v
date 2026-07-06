// HDLBits: Detect both edges
// https://hdlbits.01xz.net/wiki/Edgedetect2

module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    
    reg [7:0] d_last;

    always @(posedge clk) begin
        d_last  <= in;
        anyedge <= d_last ^ in;
    end

endmodule
