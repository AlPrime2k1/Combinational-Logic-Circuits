`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar
// 
// Create Date: 11.04.2022 19:00:00
// Design Name: Bidirectional Buffer
// Module Name: bidirbuf
// Revision:
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module bidirbuf(
    inout a,
    inout b,
    input en
    );
    bufwithclock b1(a,en,b);
    bufwithclock b2(b,~en,a);
endmodule
