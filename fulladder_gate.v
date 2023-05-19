module full_adder_gate(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
wire w0,w1,w2,w3;
	 
xor(w0,a,b);
xor(sum,w0,c);

and(w1,a,b);
and(w2,c,b);
and(w3,a,c);
or (carry,w1,w2,w3);

endmodule