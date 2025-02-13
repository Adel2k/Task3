`timescale 1ns / 1ps

module main(
    output reg y0, y1, y2, y3,
    input [1:0] w,
    input en
);
    always @(*) begin
        if (en) begin
            case (w)
                0: y0 = 1;
                1: y1 = 1;
                2: y2 = 1;
                3: y3 = 1;
            endcase
        end
        else begin
            y0 = 0;
            y1 = 0;
            y2 = 0;
            y3 = 0;
        end

    end
endmodule