`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 01:38:53
// Design Name: 
// Module Name: mux2x1gate
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


module mux2x1gate(
    input i0,
    input i1,
    input s,
    output y
    );
wire sbar,p,q;
not n1 (sbar,s);
and n2 (p,sbar,i0);
and n3 (q,s,i1);
or n4 (y,p,q);  
  
    
endmodule
