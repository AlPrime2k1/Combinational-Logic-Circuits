module decoder_3to_tb ();
reg [2:0] in;
wire [7:0] y;

reg [2:0] i;
decoder_3to8 d1 (in,y);

initial 
begin
for (in=0;in<8;in=in+1)
		begin 
			
			
			$monitor("in=%b,y=%b",in,y);
			#10;
		end
end

initial 		 
#80	$finish; 

endmodule