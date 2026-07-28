module Dflipflop(q,clk,clr,d);
input d,clk,clr;
output reg q=1'b0;

always@(posedge clk )
begin
if (clr)
     q<=1'b0;
   else
     q<=d;
     
  
end 
endmodule