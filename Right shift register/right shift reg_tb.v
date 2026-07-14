`timescale 1ns/1ps
module right_shift_test;
reg [7:0]d;
reg clk,id,clr,si;
wire so;

// instantiate the unit under test (uut)
right_shift  inst_right_shift(
.d(d),
.clk(clk),
.id(id),
.clr(clr),
.si(si),
.so(so)
);

always #10 clk=~clk;
initial
begin
// initialize the input
d=8'b00000000;
clk=0;
id=0;
clr=0;
si=0;

 // Step 1: Clear the register
 clr=1;
 #20;
 clr=0;
 
 // step 2: load the data
 d=8'b10110011;
 id=1;
 #20;
 id=-0;
 
 // shift 1: Shift left with si = 1
 si = 1;
 #20;
 
 // shift 2: Shift left with si = 1
 si=1;
 #20;
 
 // shift 3: Shift left with si = 0
 si=0;
 #20
 
 
 // shift 4: Shift left with si = 0
 si=0;
 #20;
 
 // shift 5: Shift left with si = 1
 si=1;
 #20;
 
 $finish;
 end
 
 initial
 begin
 $monitor("time=%0t d=%b clr=%b id=%b clk=%b si=%b so=%b",$time,d,id,clr,clk,si,so);
 end
 endmodule