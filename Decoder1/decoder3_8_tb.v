`timescale 1ns/1ns
module decoder3_8_test;
reg x,y,z;
wire [7:0]dec_out;
// instantiate the unit under test (uut)
decoder3_8 inst_decoder3_8(
.x(x),
.y(y),
.z(z),
.dec_out(dec_out)
);
initial 
begin
// initalize the input
x=0;
y=0;
z=0;


#20 {x,y,z}=3'b000;
#20 {x,y,z}=3'b001;
#20 {x,y,z}=3'b010;
#20 {x,y,z}=3'b011;

#20 {x,y,z}=3'b100;
#20 {x,y,z}=3'b101;
#20 {x,y,z}=3'b110;
#20 {x,y,z}=3'b111;
#20;
$finish;
end
initial
begin
$monitor("x=%b y=%b z=%b dec_out=%b",x,y,z,dec_out);
end 
endmodule