
module full_adder_using_half_adder(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
	 wire w0,w1,w2;
	 
	 half_adder h1 (.a(a),.b(b),.sum(w0),.carry(w1));
	 half_adder h2 (.a(w0),.b(c),.sum(sum),.carry(w2));
	 or(carry,w1,w2);

endmodule