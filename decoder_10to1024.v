module decoder_10to1024 (
		input [9:0] in,
		output [1023:0] y);
		
assign y= 1<<in;

endmodule