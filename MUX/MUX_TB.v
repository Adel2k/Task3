`timescale 1ns/1ps

module TB;
    reg w0, w1, w2, w3;
    wire f;

    main uut (
        .w0(w0), .w1(w1), .w2(w2), .w3(w3),
        .f(f)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);
        $monitor("\033[1;36mw0=%b w1=%b w2=%b w3=%b\033[1;37m | \033[1;33mf = %b", 
                 w3, w2, w1, w0, f);

        for (integer i = 0; i < 16; i++) begin
            {w3, w2, w1, w0} = i;
            #10;
        end

        $finish;
    end
endmodule

