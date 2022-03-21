`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 02:22:22
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input en,
    input d0,
    input d1,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0= en &(~d1)&(~d0);
    assign y1= en &(~d1)&(d0);
    assign y2= en &(d1)&(~d0);
    assign y3= en & (d1)&(d0);
endmodule
