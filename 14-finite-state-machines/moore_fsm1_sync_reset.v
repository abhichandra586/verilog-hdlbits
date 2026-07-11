// HDLBits: FSM 1 Synchronous reset
// https://hdlbits.01xz.net/wiki/Fsm1s

module top_module(clk, reset, in, out);
    input clk;
    input reset;
    input in;
    output out;

    parameter A=0, B=1;
    reg state, next;

    always @(*) begin
        case(state)
            A: next = in ? A : B;
            B: next = in ? B : A;
        endcase
    end

    always @(posedge clk) begin
        if (reset)
            state <= B;
        else
            state <= next;
    end

    assign out = (state == B);

endmodule
