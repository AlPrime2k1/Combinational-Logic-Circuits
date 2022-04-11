`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar
// 
// Create Date: 11.04.2022 18:51:39
// Design Name: Buffer with clock signal 
// Module Name: bufwithclock
// 
// Revision:
// Revision 0.01 - File Created

//////////////////////////////////////////////////////////////////////////////////


module bufwithclock(
    input a,
    input clk,
    output reg b
    );
    
    always@(posedge clk)
    b<=a;
endmodule
