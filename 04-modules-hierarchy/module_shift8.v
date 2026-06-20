// HDLBits: Module shift8
// https://hdlbits.01xz.net/wiki/Module_shift8

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] s [0:3];
    assign s[0]=d;
    
    genvar i;
    generate
        for(i=0;i<=2;i=i+1)
            begin : module_inst
                my_dff8 inst(
                    .clk(clk),
                    .d(s[i]),
                    .q(s[i+1])
                );
            end
    endgenerate
    
    always @(*) begin
        case(sel)
            2'b11: q=s[3];
            2'b10: q=s[2];
            2'b01: q=s[1];
            2'b00: q=s[0];
            default: q=1'bx;
        endcase
    end

endmodule