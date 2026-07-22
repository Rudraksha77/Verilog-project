module counter(countup,ripple_out,clr,clk);
input [7:0] countup;
input clr;
input clk;
output reg [7:0] ripple_out=8'b000000000;

//assign ripple_out=8'b00000000;
//reg [7:0] ripple_out=8'b00000000;

always@(posedge clk )
begin
if (clr ==1'b1)
    ripple_out<=8'b00000000;
    
else if (ripple_out == 8'b10101010)
    ripple_out<=8'b00000000;
    
else if  (countup == 8'b00000001)
    ripple_out <= ripple_out+1'b1;
	
	end
endmodule