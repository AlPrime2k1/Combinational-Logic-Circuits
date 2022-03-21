`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2022 00:19:44
// Design Name: 
// Module Name: comparator1bit
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


module comparator1bit(
    input a,
    input b,
    output g,
    output e,
    output s
    );
    assign g= a & (~b);
    assign e= a ~^ b;
    assign s= (~a) & b;
    
endmodule
