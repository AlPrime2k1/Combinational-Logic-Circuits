`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar 
// 
// Create Date: 03.05.2022 20:42:25
// Design Name: 8-bit Multiplier
// Module Name: Multiplier8bit
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////


module Multiplier8bit(
    input [7:0] a,
    input [7:0] b,
    output [15:0] p
    );
    //Line Products
    wire [7:0] p0;
    wire [8:0] p1;
    wire [9:0] p2;
    wire [10:0] p3;
    wire [11:0] p4;
    wire [12:0] p5;
    wire [13:0] p6;
    wire [14:0] p7;
    
    //Partial sum
    wire [15:0] s [6:0];
    
    assign p0= {8{a[0]}} & b[7:0];
    assign p1= {8{a[1]}} & b[7:0];
    assign p2= {8{a[2]}} & b[7:0];
    assign p3= {8{a[3]}} & b[7:0];
    assign p4= {8{a[4]}} & b[7:0];
    assign p5= {8{a[5]}} & b[7:0];
    assign p6= {8{a[6]}} & b[7:0];
    assign p7= {8{a[7]}} & b[7:0];
    
    assign s[0]=p0+(p1<<1);
    assign s[1]=s[0]+(p2<<2);
    assign s[2]=s[1]+(p3<<3);
    assign s[3]=s[2]+(p4<<4);
    assign s[4]=s[3]+(p5<<5);
    assign s[5]=s[4]+(p6<<6);
    assign s[6]=s[5]+(p7<<7);
    assign p= s[6];
    
    
endmodule
