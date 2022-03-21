`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIST
// Engineer: KIRTI KUMAR
// 
// Create Date: 06.02.2022 20:53:49
// Design Name: HALF ADDER USING CASE STATEMENTS
// Module Name: HA_case

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HA_case(
    input wire a,b,
    output reg s,
    output reg cout);
    always@(a or b)
        begin
            case({a,b})
                2'b00: begin s=0;cout=0; end 
                2'b01: begin s=1;cout=0; end
                2'b10: begin s=1;cout=0; end
                2'b11: begin s=0;cout=1; end
            endcase
         end
endmodule
