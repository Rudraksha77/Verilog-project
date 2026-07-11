`timescale 1ns/1ns
module mux8_1_test;
reg in0,in1,in2,in3,in4,in5,in6,in7;
reg s2,s1,s0;
wire out;

//instantiate the unit under  test(uut)
mux8_1 inst_mux8_1(
.in0(in0),
.in1(in1),
.in2(in2),
.in3(in3),
.in4(in4),
.in5(in5),
.in6(in6),
.in7(in7),
.s2(s2),
.s1(s1),
.s0(s0),
.out(out)
);

initial 
begin
//initialize the input
in0=0;
in1=1;
in2=0;
in3=1;
in4=0;
in5=1;
in6=0;
in7=1;
#20

#20 {s2,s1,s0}=000;
#20 {s2,s1,s0}=001;
#20 {s2,s1,s0}=010;
#20 {s2,s1,s0}=011;

#20 {s2,s1,s0}=100;
#20 {s2,s1,s0}=101;
#20 {s2,s1,s0}=110;
#20 {s2,s1,s0}=111;
$finish;

end 
endmodule