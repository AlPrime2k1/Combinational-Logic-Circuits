module gated_d_latch (
		input d,g,
		output reg q);
		
always@(d,g,q)
begin 

	if (g)
		q = d;
	else
		q = q;

end
endmodule