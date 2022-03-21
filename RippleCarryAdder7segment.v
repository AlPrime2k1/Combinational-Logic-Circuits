`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST 
// Engineer: KIRTI KUMAR
// 
// Create Date: 24.02.2022 03:04:47
// Design Name: RIPPLE CARRY ADDER WITH 7 SEGMENT DISPLAY 
// Module Name: RippleCarryAdder7segment
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RippleCarryAdder7segment(
    input [3:0] a,
    input [3:0] b,
    input c,
    output reg [6:0] seg,
    output [3:0] an,
    output cout
    ); wire [3:0] sum;
    wire c1,c2,c3;
FAusingHA k0 (.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(c1));
FAusingHA k1 (.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.carry(c2)); 
FAusingHA k2 (.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.carry(c3));
FAusingHA k3 (.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.carry(cout));   
assign an=4'b1110;

always@(sum)
begin 
    case(sum)
    4'b0000:seg=7'b1000000;
    4'b0001:seg=7'b1111001;
    4'b0010:seg=7'b0100100;
    4'b0011:seg=7'b0110000;
    4'b0100:seg=7'b0011001;
    4'b0101:seg=7'b0010010;
    4'b0110:seg=7'b0000010;
    4'b0111:seg=7'b1111000;
    4'b1000:seg=7'b0000000;
    4'b1001:seg=7'b0010000;
    4'b1010:seg=7'b0001000;
    4'b1011:seg=7'b0000011;
    4'b1100:seg=7'b1000110;
    4'b1101:seg=7'b0100001;
    4'b1110:seg=7'b0000110;
    4'b1111:seg=7'b0001110;
    
    endcase
end


    
endmodule
