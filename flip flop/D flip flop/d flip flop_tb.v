module Dflipflop_test;
reg d,clk,clr;
wire  q;

// instantiate the unit under test (uut)
Dflipflop inst_Dflipflop(
.d(d),
.clk(clk),
.clr(clr),
.q(q)
);

always #10 clk=~clk;

initial
begin
// initialize the input
d=0;
clk=0;
clr=1;

#20 clr=0;

#20  d=1;
#20  d=0;
#20  d=1;
#20  d=0;
#20;
$finish;
end

initial
begin
$monitor("time=%0t d=%b clk=%b clr=%b q=%b",$time,d,clk,clr,q);
end
endmodule










