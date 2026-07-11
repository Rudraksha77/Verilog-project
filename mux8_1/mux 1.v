module mux8_1(in0,in1,in2,in3,in4,in5,in6,in7,s2,s1,s0,out);
input in0,in1,in2,in3,in4,in5,in6,in7;
input s2,s1,s0;
output reg out;
always@(in0,in1,in2,in3,in4,in5,in6,in7,s2,s1,s0) 
begin
 case({s2,s1,s0})
 
3'b000:out=8'b00000001;
3'b001:out=8'b00000010;
3'b010:out=8'b00000100;
3'b011:out=8'b00001000;  

3'b100:out=8'b00010000;
3'b101:out=8'b00100000;
3'b110:out=8'b01000000;
3'b111:out=8'b10000000;
default:out=8'b00000000;
endcase
end
endmodule

