module Dlatch(d,en,q);
input d,en;
output reg q=1'b0;

always@(d,en)
begin
if(en)
  q = d ;
  end
endmodule