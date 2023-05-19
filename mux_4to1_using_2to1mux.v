module mux_4to1_using_2to1mux(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output y
    );
	 wire w0,w1;
	 
	 mux_2to1 m1(a,b,s0,w0);
	 mux_2to1 m2(c,d,s0,w1);
	 mux_2to1 m3(w0,w1,s1,y);

endmodule