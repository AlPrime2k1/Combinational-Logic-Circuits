module mux_2to1_vector (
	input [1:0] in,
	output y,
	input s);

assign y= s?in[1]:in[0];

endmodule
