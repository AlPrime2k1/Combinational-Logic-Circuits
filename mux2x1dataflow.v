`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 01:43:56
// Design Name: 
// Module Name: mux2x1dataflow
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


module mux2x1dataflow(
    input s,
    input i0,
    input i1,
    output reg y
    );
    always@(i0 or i1 or s)
    begin 
        y=(~s&i0)|(s&i1);
    end    
    
    
    
endmodule
