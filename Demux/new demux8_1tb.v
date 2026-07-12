`timescale 1ns/1ns
module demux8_1_test;
reg in1;
reg s3,s2,s1;
wire out0,out1,out2,out3,out4,out5,out6,out7;

//instantiate the unit under test (uut)
demux8_1 inst_demux8_1(
.in1(in1),
.s3(s3),
.s2(s2),
.s1(s1),
.out0(out0),
.out1(out1),
.out2(out2),
.out3(out3),
.out4(out4),
.out5(out5),
.out6(out6),
.out7(out7)
);
initial 
begin
//initialize the input
in1=1'b1;
s3=0;
s2=0;
s1=0;

 {s3,s2,s1}=3'b000;
#20 {s3,s2,s1}=3'b001;
#20 {s3,s2,s1}=3'b010;
#20 {s3,s2,s1}=3'b011;

#20 {s3,s2,s1}=8'b100;
#20 {s3,s2,s1}=8'b101;
#20 {s3,s2,s1}=8'b110;
#20 {s3,s2,s1}=8'b111;
#20
$finish;
end
endmodule