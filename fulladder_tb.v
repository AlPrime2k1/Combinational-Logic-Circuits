module full_adder_tb();
wire sum,carry;
reg a,b,c;

full_adder_gate f1 (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial begin
	a=0;b=0;c=0; #10;
	a=0;b=0;c=1; #10;
	a=0;b=1;c=0; #10;
	a=0;b=1;c=1; #10;
	a=1;b=0;c=0; #10;
	a=1;b=0;c=1; #10;
	a=1;b=1;c=0; #10;
	a=1;b=1;c=1; #10;
	$finish;
	
end
initial begin
	$monitor(a,b,c,sum,carry);
end

endmodule