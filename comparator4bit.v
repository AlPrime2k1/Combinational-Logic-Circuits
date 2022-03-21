`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar
// 
// Create Date: 19.02.2022 00:52:13
// Design Name: 4 bit comparator
// Module Name: comparator4bit
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator4bit(
    input [3:0] a,
    input [3:0] b,
    output g,
    output e,
    output s
    );
wire g3,e3,s3,g2,e2,s2,g1,e1,s1,g0,e0,s0; 
   
comparator1bit c3 (a[3],b[3],g3,e3,s3);
comparator1bit c2 (a[2],b[2],g2,e2,s2);
comparator1bit c1 (a[1],b[1],g1,e1,s1);
comparator1bit c0 (a[0],b[0],g0,e0,s0);

assign g = g3 | (e3 & g2) | (e3 & e2 & g1) | (e3 & e2 & e1 & g0);
assign s = s3 | (e3 & s2) | (e3 & e2 & s1) | (e3 & e2 & e1 & s0);
assign e = e3 & e2 & e1 & e0;

endmodule
