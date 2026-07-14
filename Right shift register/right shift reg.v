module right_shift(d,clk,si,id,clr,so);
input [7:0]d;
input clk,si,id,clr;
output  so;
reg [7:0]q;
assign so=q[0]; //0 is lsb
always@(posedge clk or posedge clr)
begin

if (clr)
    q<=8'b00000000;
   
else if (id)
   q<=d;
   
else
begin
q[7]<=si;
q[6]<=q[7];
q[5]<=q[6];
q[4]<=q[5];
q[3]<=q[4];
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];



end
end
endmodule