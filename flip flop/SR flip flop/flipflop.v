module flipflop(s,r,clk,rst,q);
input s,r;
input clk,rst;
output reg [4:0]q;

always@(posedge clk or posedge rst)
begin

  if (rst)
    q<=1'b0;
  else
  begin
  
  case({s,r})
     2'b00:q<=q;   //input hold
	 2'b01:q<=1'b1; //input set
	 
	 2'b10:q<=1'b0; //input reset
	 2'b11:q<=1'bx;  //invalid
	 
	default:q<=q;
	
	endcase 
	end
	end
	endmodule