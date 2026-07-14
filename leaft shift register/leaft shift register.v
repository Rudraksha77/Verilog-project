module left_shift(d,si,clk,id,clr,so);
input [7:0]d;
input si,clk,clr,id;
output  so;

reg [7:0]q;
assign so = q[7];
//assign d={7:0]q;

always@(posedge clk or posedge clr)
begin
if(clr)
q<=8'b00000000; //0;

else if (id)
q<=d;
else
begin
q[7]<=q[6];
q[6]<=q[5];
q[5]<=q[4];
q[4]<=q[3];
q[3]<=q[2];
q[2]<=q[1];
q[1]<=q[0];
q[0]<=si;

end
end
endmodule
