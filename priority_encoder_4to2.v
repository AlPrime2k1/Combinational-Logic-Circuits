module priority_encoder_4to2 (
	input [3:0] in,
	output reg [1:0] y);
always@(*)
begin

casex (in)
4'b1xxx: y=2'd3;
4'b01xx: y=2'd2;
4'b001x: y=2'd1;
4'b0001: y=2'd0;
endcase
end
endmodule