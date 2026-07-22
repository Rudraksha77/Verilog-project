`timescale 1ns/1ns 
module counter_test;
reg [7:0]countup;
reg clr;
reg clk;
wire [7:0] ripple_out;

// instantiate the unit under test (uut)
counter inst_counter(
.countup(countup),
.clr(clr),
.clk(clk),
.ripple_out(ripple_out)
);

always #10 clk=~clk;

initial
begin
// initialize the input
clr=1'b0;
clk=1'b0;
countup=8'b00000000;
#20;


clr=1'b1;
clk=1'b1;
countup=8'b00000001;
#20;

clr=1'b0;
#200;

clr=1'b1;
#20;
clr=1'b0;
#200;


clr=1'b1;
#20;
clr=1'b0;
#200;

#20

$finish;
end

initial
begin
$monitor("time=%0t clr=%b clk=%b countup=%b ripple_out=%b",$time,clr,clk,countup,ripple_out);
end
endmodule