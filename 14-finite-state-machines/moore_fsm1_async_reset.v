// HDLBits: FSM 1 Asynchronous reset
// https://hdlbits.01xz.net/wiki/Fsm1

module top_module(
    input clk,
    input areset,
    input in,
    output out
);

    parameter A=0, B=1;
    reg state, next;

    always @(*) begin
        case(state)
            A: next = in ? A : B;
            B: next = in ? B : A;
            default: next = next;
        endcase
    end

    always @(posedge clk, posedge areset) begin
        if (areset)
            state <= B;
        else
            state <= next;
    end

    assign out = (state == B);

endmodule
