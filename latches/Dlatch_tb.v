`timescale 1ns/1ns 
module Dlatch_test;
reg d,en;
wire q;

// instantiate the unit under test (uut)
Dlatch  inst_Dlatch(
.d(d),
.en(en),
.q(q)
);

initial
begin
// inatialize the input
d=0;
en=0;

#20  en=1;
     d=1;
	 
#20  en=1;
     d=0;

#20  en=0;
     d=1;
	 
#20  en = 0;
     d=0;
	 
#20  en=1;
     d=1;
#20
$finish;
end

initial 
begin
$monitor("time=%0t d=%b en=%b q=%b",$time,d,en,q);
end
endmodule
