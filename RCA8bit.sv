`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar
// 
// Create Date: 03.05.2022 19:41:41
// Design Name: 8 bit Ripple Carry Adder
// Module Name: RCA8bit
// 
//////////////////////////////////////////////////////////////////////////////////


module RCA8bit(
    input [7:0] a,
    input [7:0] b,
    input c,
    input wire [6:0] para,
    output [7:0] sum,
    output carry
    );
    
   
//wire c1,c2,c3;
FAusingHA k0 (.a(a[0]),.b(b[0]),.cin(c),.sum(sum[0]),.carry(para[0]));
FAusingHA k1 (.a(a[1]),.b(b[1]),.cin(para[0]),.sum(sum[1]),.carry(para[1])); 
FAusingHA k2 (.a(a[2]),.b(b[2]),.cin(para[1]),.sum(sum[2]),.carry(para[2]));
FAusingHA k3 (.a(a[3]),.b(b[3]),.cin(para[2]),.sum(sum[3]),.carry(para[3]));
FAusingHA k4 (.a(a[4]),.b(b[4]),.cin(para[3]),.sum(sum[4]),.carry(para[4]));
FAusingHA k5 (.a(a[5]),.b(b[5]),.cin(para[4]),.sum(sum[5]),.carry(para[5]));
FAusingHA k6 (.a(a[6]),.b(b[6]),.cin(para[5]),.sum(sum[6]),.carry(para[6]));
FAusingHA k7 (.a(a[7]),.b(b[7]),.cin(para[6]),.sum(sum[7]),.carry(carry));   

endmodule
