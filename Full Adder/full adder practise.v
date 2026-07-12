`timescale 1ns/1ns 
module adder8_3_test;
reg a;
reg b;
reg cin;
wire sum;
wire cout;

// instantiate the unit under test (uut)
adder8_3 inst_adder8_3(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);

initial 
begin
// initialize the input
a=0;
b=0;
cin=0;

#20 {a,b,cin}=3'b000;
#20 {a,b,cin}=3'b001;
#20 {a,b,cin}=3'b010;
#20 {a,b,cin}=3'b011;

#20 {a,b,cin}=3'b100;
#20 {a,b,cin}=3'b101;
#20 {a,b,cin}=3'b110;
#20 {a,b,cin}=3'b111;
#20;
$finish;
end

initial
begin
$monitor("$time=%0t a=%b b=%b cin=%b sum=%b cout=%b",$time,a,b,cin,sum,cout);
end
endmodule