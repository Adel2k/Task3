`timescale 1ns/1ps

module main(
    input wire w0,w1,w2,w3,
    output wire f
);
    reg y0, y1, y2, y3;

    always@(*) begin
        y0 = 0;
        y1 = 0;
        y2 = 0;
        y3 = 0;

        case({w0,w1})
            2'b00: y0 = 1;
            2'b01: y1 = 1;
            2'b10: y2 = 1;
            2'b11: y3 = 1;
        endcase
    end
    assign f = (w0 & y0) | (w1 & y1) | (w2 & y2) | (w3 & y3);

endmodule