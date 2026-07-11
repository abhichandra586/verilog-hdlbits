// HDLBits: FSM 2 Asynchronours reset
// https://hdlbits.01xz.net/wiki/Fsm2

module top_module(
    input clk,
    input areset,
    input j,
    input k,
    output out
);

    parameter OFF=0, ON=1;
    reg state, next;

    always @(*) begin
        case(state)
            OFF: next = j ? ON : OFF;
            ON:  next = k ? OFF : ON;
        endcase
    end

    always @(posedge clk, posedge areset) begin
        if (areset)
            state <= OFF;
        else
            state <= next;
    end

    assign out = (state == ON);

endmodule
