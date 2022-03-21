`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: KIRTI KUMAR
// 
// Create Date: 19.02.2022 00:28:29
// Design Name: 2 BIT COMPARATOR
// Module Name: comparator2bit
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator2bit(
    input  [1:0] a,
    input  [1:0] b,
    output  g,
    output  e,
    output  s
    ); 
    wire mg,me,ms,le,lg,ls;
comparator1bit c1 (a[1],b[1],mg,me,ms);               
comparator1bit c0 (a[0],b[0],lg,le,ls);
assign e = me & le ;
assign g = mg | ( me & lg );
assign s = ms | ( me & ls );    
endmodule
