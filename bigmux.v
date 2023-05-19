module bigmux.v (
	input [0:1023] in,
	input [0:9] sel, 
	output y);

assign y= in[sel];

endmodule