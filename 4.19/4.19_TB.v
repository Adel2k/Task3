`timescale 1ns / 1ps

module tb_main;
    reg [1:0] w;
    reg en;
    wire y0, y1, y2, y3;
    
    main uut (
        .y0(y0), .y1(y1), .y2(y2), .y3(y3),
        .w(w),
        .en(en)
    );
    
    initial begin
        $monitor("en=%b w=%b | y0=%b y1=%b y2=%b y3=%b", en, w, y0, y1, y2, y3);
        
        en = 0; w = 2'b00;
        #10;
        
        en = 1;
        w = 2'b00; #10;
        w = 2'b01; #10;
        w = 2'b10; #10;
        w = 2'b11; #10;
        en = 0; #10;
        
        $finish;
    end
endmodule