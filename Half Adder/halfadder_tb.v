`timescale 1ns/1ns
module halfadder_test;
reg  a;
reg  b;
wire sum;
wire carry;

// instatiate the unit under test (uut)
halfadder inst_halfadder(
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);

initial
begin
// initialize the input
a=0;
b=0;
//apply test 
{a,b}=2'b00;
#20 {a,b}=2'b01;
#20 {a,b}=2'b10;
#20 {a,b}=2'b11;
#20;
$finish;
end

initial 
begin
$monitor("time=%0t a=%b b=%b sum=%b carry=%b",$time,a,b,sum,carry);
end
endmodule