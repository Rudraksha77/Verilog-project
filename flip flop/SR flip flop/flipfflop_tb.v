`timescale 1ns/1ns 
module flipflop_test;
reg s,r;
reg clk,rst;
wire [4:0]q;

// instantiate the unit under test (uut)
flipflop inst_flipflop(
.s(s),
.r(r),
.clk(clk),
.rst(rst),
.q(q)
);

always #10 clk=~clk;

initial
begin
// initialize the input
s=0;
r=0;
clk=0;
rst=1;

#20 rst=0;

    {s,r}=2'b00;
#20 {s,r}=2'b01;
#20 {s,r}=2'b10;
#20 {s,r}=2'b11;
#20;
$finish;
end

initial
begin
$monitor("time=%0t s=%b r=%b clk=%b rst=%b q=%b",$time,s,r,clk,rst,q);
end
endmodule