module mux_2to1_tb( );
	 wire y;
	 reg a,b,s;
	 integer i;
	 
	 mux_2to1 m1(a,b,s,y);
	 
	 initial begin
		a=0;b=0;s=0; #10;
		a=0;b=0;s=1; #10;
		a=0;b=1;s=0; #10;
		a=0;b=1;s=1; #10;
		a=1;b=0;s=0; #10;
		a=1;b=0;s=1; #10;
		a=1;b=1;s=0; #10;
		a=1;b=1;s=1; #10;
		$finish;
	 end
	 
	 initial begin
		$monitor(a,b,s,y);
	end


endmodule