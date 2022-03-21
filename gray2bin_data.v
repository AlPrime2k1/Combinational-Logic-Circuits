`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: KIRTI KUMAR
// 
// Create Date: 19.02.2022 00:08:46
// Design Name: GRAY CODE TO BINARY CONVERTER
// Module Name: gray2bin_data

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gray2bin_data(
    input [3:0] g,
    output [3:0] b
    );
    assign b[3]= g[3];
    assign b[2]= g[3]^g[2];
    assign b[1]= g[3]^g[2]^g[1];
    assign b[0]= g[3]^g[2]^g[1]^g[0];
endmodule
