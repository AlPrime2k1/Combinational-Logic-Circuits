`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 01:48:13
// Design Name: 
// Module Name: mux4x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4x1(
    input s0,
    input s1,
    input i0,
    input i1,
    input i2,
    input i3,
    output y
    );
wire p,q;
mux2x1gate m0 (i0,i1,s0,p) ;   
mux2x1gate m1 (i2,i3,s0,q) ;
mux2x1gate m2 (p,q,s1,y) ;    
    
endmodule
