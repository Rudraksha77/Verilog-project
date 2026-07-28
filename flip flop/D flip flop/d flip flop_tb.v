module mux(a,b,c,d,out,sel1,sel2)
input a,b,c,d;
output out;

always@(a,b,c,d);
begin
case:({sel1,sel2})
2'b00:out=4'b0000;
2'b01:out=4'b0010;
2'b10:out=4'b0100;
2'b11:out=4'b1000;

default:out=1'b0;

endcase
end
endmodule



