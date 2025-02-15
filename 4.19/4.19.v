`timescale 1ns / 1ps

module main(
    input wire w0, w1, w2,
    input en,
    output wire f
);
    reg y0, y1, y2, y3, y4, y5, y6, y7;
    always @(*) begin
        y0 = 0;
        y1 = 0;
        y2 = 0;
        y3 = 0;
        y4 = 0;
        y5 = 0;
        y6 = 0;
        y7 = 0;
        if (en) begin
            case ({w0, w1, w2})
                3'b000: y0 = 1;
                3'b001: y1 = 1;
                3'b010: y2 = 1;
                3'b011: y3 = 1;
                3'b100: y4 = 1;
                3'b101: y5 = 1;
                3'b110: y6 = 1;
                3'b111: y7 = 1;
            endcase
        end
    end
    assign f = y1 | y2 | y3 | y5 | y6;
endmodule   