`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 02:28:00
// Design Name: 
// Module Name: decoder3to8en
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


module decoder3to8en(
    input a,
    input b,
    input c,
    input en,
    output y0,y1,y2,y3,y4,y5,y6,y7
    );
wire p,q;
decoder2to4 d0 (en,c,0,p,q);    
decoder2to4 d1 (p,a,b,y0,y1,y2,y3);   
decoder2to4 d2 (q,a,b,y4,y5,y6,y7); 
    
endmodule
