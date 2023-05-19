module mux_4to1_vector(
    input [3:0] in,
    input [1:0] sel,
    output y
    );
	 
	 assign y=sel[0]?(sel[1]?in[3]:in[1]):(sel[1]?in[2]:in[0]);


endmodule