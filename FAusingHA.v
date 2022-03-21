`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2022 20:35:09
// Design Name: 
// Module Name: FAusingHA
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


module FAusingHA(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
    wire s1,s2,s3;
    half_adder_data h0 (.a(a),.b(b),.sum(s1),.carry(s2));
    half_adder_data h1 (.a(s1),.b(cin),.sum(sum),.carry(s3));
    assign carry= s2 | s3;  
endmodule
