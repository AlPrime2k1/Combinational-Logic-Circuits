module gated_d_latch_tb();
		wire q;
		reg d,g;
		
gated_d_latch d1(d,g,q);
		
initial
begin
	g=0;
	d=1;//#10
	forever begin
	#10 g=~g;
	#20 d=~d;
	end
end

initial 
begin	
	#100
	$finish;
	
	
	

end
endmodule