`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: KIRTI KUMAR
// 
// Create Date: 17.02.2022 02:13:01
// Design Name: 1 TO 4 DEMULTIPLEXER USING DATAFLOW MODELLING
// Module Name: Demux1x4data

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Demux1x4data(
    input x,
    input s0,
    input s1,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0= x & (~s1)&(~s0);
    assign y1= x & (~s1)&(s0);
    assign y2= x & (s1)&(~s0);
    assign y3= x & (s1)&(s0);
endmodule
