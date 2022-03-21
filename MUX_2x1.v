`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST 
// Engineer: KIRTI KUMAR
// 
// Create Date: 06.02.2022 20:41:04
// Design Name: 2 TO 1 MULTIPLEXER
// Module Name: MUX_2x1

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2x1(
    input I0,
    input I1,
    input S,
    output reg Y
    );
    always@(I0,I1,S)
    begin
        if (S)
            Y=I1;
        else
            Y=I0;
     end
endmodule
