`timescale 1ns/1ps

module TB();
    reg x, y, z;
    wire s, c;

    main test(
        .x(x),
        .z(z),
        .y(y),
        .c(c),
        .s(s)
    );

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, TB);
    $display("\033[1;34mThe number of 1's\033[0m");

    for (integer i = 0; i < 8; i++) begin
        {x, y, z} = i;
        #10;
        $display("\033[1;33mx=%b y=%b z=%b\033[0m\n\tbinary = %b%b\n\tdecimal = %d\n", 
                 x, y, z, c, s, {c,s});
    end
    #10;
    $finish;
end

endmodule
