`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar
// 
// Create Date: 03.05.2022 19:28:56
// Design Name: Half Adder 
// Module Name: HalfAdder
// Revision 0.01 - File Created
// Additional Comments: written in System Verilog
// 
//////////////////////////////////////////////////////////////////////////////////


module HalfAdder(
    input a,
    input b,
    output reg sum,
    output reg carry
    );
    
    assign sum=a^b;
    assign carry=a&b;
    
endmodule
