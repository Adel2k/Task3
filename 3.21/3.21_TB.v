`timescale 1ns/1ps

module TB();
    reg x_TB, y_TB, z_TB;
    wire s_TB, c_TB;

    main test(
        .x(x_TB),
        .z(z_TB),
        .y(y_TB),
        .c(c_TB),
        .s(s_TB)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);

        for (integer i = 0; i < 8; i = i + 1) begin
            {x_TB, y_TB, z_TB} = i;
            #50;
            $display("x=%b y=%b z=%b | c=%b s=%b", x_TB, y_TB, z_TB, c_TB, s_TB);
        end
        #10;
        $finish;
    end
endmodule
