module decoder_3to8 (
		input [2:0] in,
		output reg [7:0] y);
always@(*)
begin	
y={8{1'b0}};	
case(in)
	3'd7: y[in]=1;
	3'd6: y[in]=1;
	3'd5: y[in]=1;
	3'd4: y[in]=1;
	3'd3: y[in]=1;
	3'd2: y[in]=1;
	3'd1: y[in]=1;
	3'd0: y[in]=1;
endcase
end
endmodule