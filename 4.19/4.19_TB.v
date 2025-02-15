`timescale 1ns / 1ps

module tb;

    reg w0, w1, w2;
    reg en;
    wire f;

    main test (
        .w0(w0),
        .w1(w1),
        .w2(w2),
        .en(en),
        .f(f)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);
        w0 = 0;
        w1 = 0;
        w2 = 0;
        en = 0;
        #10;
        
        en = 1;
        
        for (integer i = 0; i < 8; i = i + 1) begin
            {w0, w1, w2} = i;
            #10;
        end
        
        en = 0;
        {w0, w1, w2} = 3'b000;
        #10;
        $finish;
    end

    initial begin
        $monitor("en=%b w0=%b w1=%b w2=%b y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b f=%b", 
                  en, w0, w1, w2, test.y0, test.y1, test.y2, test.y3, test.y4, test.y5, test.y6, test.y7, f);
    end

endmodule
