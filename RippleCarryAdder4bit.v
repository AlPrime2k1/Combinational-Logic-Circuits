`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: KIRTI KUMAR
// 
// Create Date: 15.02.2022 02:14:48
// Design Name: 4 BIT RIPPLE CARRY ADDER
// Module Name: RippleCarryAdder4bit

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RippleCarryAdder4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
wire c1,c2,c3;
FAusingHA k0 (.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(c1));
FAusingHA k1 (.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.carry(c2)); 
FAusingHA k2 (.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.carry(c3));
FAusingHA k3 (.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.carry(cout));   
    
endmodule
