`timescale 1ns/1ps

module main(
    output s, c,
    input wire x, y, z
);
    wire cin, cout, s1;
    assign cout = x & y;
    assign s1 = x ^ y;
    assign s = s1 ^ z;
    assign cin = s1 & z;
    assign c = cin | cout;
    
endmodule