`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: Kirti Kumar
// 
// Create Date: 11.04.2022 18:34:35
// Design Name: Tri-state buffer 
// Module Name: tristatebuf
// Revision:
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module tristatebuf(
    input data,
    input en,
    output y
    );
    

//always@(en,data)
assign y=en?data:'bz;

endmodule
