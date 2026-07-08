module top_module(
    input clk,
    input reset,
    input ena,
    output reg pm,
    output reg [7:0] hh,
    output reg [7:0] mm,
    output reg [7:0] ss);

    wire ss_wrap = (ss == 8'h59);
    wire mm_wrap = (mm == 8'h59);

    wire ena_mm = ena && ss_wrap;
    wire ena_hh = ena && ss_wrap && mm_wrap;

    always @(posedge clk) begin
        if (reset)
            ss <= 8'h00;
        else if (ena) begin
            if (ss_wrap)
                ss <= 8'h00;
            else if (ss[3:0] == 4'd9)
                ss <= {ss[7:4] + 4'd1, 4'd0};
            else
                ss <= ss + 8'd1;
        end
    end

    always @(posedge clk) begin
        if (reset)
            mm <= 8'h00;
        else if (ena_mm) begin
            if (mm_wrap)
                mm <= 8'h00;
            else if (mm[3:0] == 4'd9)
                mm <= {mm[7:4] + 4'd1, 4'd0};
            else
                mm <= mm + 8'd1;
        end
    end

    always @(posedge clk) begin
        if (reset) begin
            hh <= 8'h12;
            pm <= 1'b0;
        end
        else if (ena_hh) begin
            if (hh == 8'h12)
                hh <= 8'h01;
            else if (hh == 8'h09)
                hh <= 8'h10;
            else
                hh <= hh + 8'd1;
            if (hh == 8'h11)
                pm <= ~pm;
        end
    end

endmodule
