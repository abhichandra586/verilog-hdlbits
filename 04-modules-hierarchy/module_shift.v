// HDLBits: Three modules
// https://hdlbits.01xz.net/wiki/Module_shift

module top_module (
    input clk,
    input d,
    output q 
);
    
    wire [3:0]s;
    assign s[0]=d;
    assign q=s[3];
    
    genvar i;
    generate
        for(i=0;i<=2;i=i+1)
            begin : module_inst
                my_dff inst(
                    .clk(clk),
                    .d(s[i]),
                    .q(s[i+1])
                );
            end
    endgenerate
    
    
endmodule