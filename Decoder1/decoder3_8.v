module decoder3_8(x,y,z,dec_out);
input x,y,z;
output reg [7:0]dec_out;
always@(x,y,z)
begin
case({x,y,z})

3'b000:dec_out=8'b00000001;
3'b001:dec_out=8'b00000010;
3'b010:dec_out=8'b00000100;
3'b011:dec_out=8'b00001000;

3'b100:dec_out=8'b00010000;
3'b101:dec_out=8'b00100000;
3'b110:dec_out=8'b01000000;
3'b111:dec_out=8'b10000000;

default:dec_out=8'b00000000;
endcase 
end
endmodule
