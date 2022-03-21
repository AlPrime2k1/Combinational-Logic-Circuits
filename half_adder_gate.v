`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: KIRTI KUMAR
// 
// Create Date: 05.02.2022 19:13:38
// Design Name: HALF ADDER USING GATE LEVEL MODELLING
// Module Name: half_adder_gate

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder_gate(
    input a,
    input b,
    output sum,
    output carry
    );
    xor(sum, a,b);
    and(carry,a,b);
    
endmodule
