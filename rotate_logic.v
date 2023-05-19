rotate logic 

module rotate_logic(
    input [5:0] in,
    input en,						// enable signal
	 input direction,				//1 for Left shift 0 for right shift
    output reg [5:0] y
    );

always@(*)
begin
if ((en)==1)
	assign y=(direction)?(((in[5:0])<<2)|(in[5:0]>>4)):(((in[5:0])>>2)|(in[5:0]<<4));
end


endmodule