module power_of_2 (
	input [5:0] n,
	output  reg y,
	output reg [5:0] temp);


always@(*) 
begin
temp= n & (n-1);
assign y=(temp == 0)?1'b1:1'b0;
end
endmodule