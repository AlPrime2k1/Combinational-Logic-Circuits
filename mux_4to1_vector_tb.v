module mux_4to1_vector_tb();
	 
	
	 wire y;
	 reg a,b,c,d,s0,s1;
	 integer i;
	 
	 mux_4to1_vector m(.in({d,c,b,a}),.sel({s1,s0}),.y(y));
	 
	 initial begin
		for (i=0;i<64;i=i+1)
		begin 
			{a,b,c,d,s1,s0}=i;
			#10;
			$monitor("a=%b,b=%b,c=%b,d=%b,s1=%b,s0=%b,Y=%b",a,b,c,d,s1,s0,y);
		end
		
		$finish;
	 end





endmodule
