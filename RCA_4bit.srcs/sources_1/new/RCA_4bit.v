`timescale 1ns / 1ps

module RCA_4bit(
a, b, s, c_out
    );
    input [3:0]a; 
    input [3:0]b;
    output [3:0]s;
    output c_out;
    wire c0,c1,c2;
    full_adder fa1(a[0], b[0], 0, s[0], c0);
    full_adder fa2(a[1], b[1], c0, s[1], c1);
    full_adder fa3(a[2], b[2], c1, s[2], c2);
    full_adder fa4(a[3], b[3], c2, s[3], c_out);
endmodule


module full_adder(
input x, y, c_in,
output sum, carry
    );
    wire w1, w2, w3;
    xor(w1,x,y);
    xor(sum, w1, c_in);
    and(w2, c_in, w1);
    and(w3,y,x);
    or(carry, w2, w3);
endmodule