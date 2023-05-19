module encoder_8to3_tb ();
reg [7:0] in;
wire [2:0] y;

priority_encoder_8to3 e1 (in,y);
initial
begin
	in = 8'd0;
	
	#10
	in [1]= 1;
	
	#10
	in[2] = 1;
	
	#10
	in[3] =1;
	
	#10
	in[4] = 1;
	
	#10
	in[5] = 1;
	
	#10
	in[6] =1;
	
	#10
	in[7] =1;
	
	#10 $finish;
	

end


endmodule