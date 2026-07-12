`timescale 1ns/1ns 
module comparator3_8_test;
reg [7:0] a;
reg [7:0] b;
wire a_greater;
wire a_equal;
wire a_less;

// instantiate the unit under test (uut)
comparator3_8 inst_comparator3_8(
.a(a),
.b(b),
.a_greater(a_greater),
.a_equal(a_equal),
.a_less(a_less)
);

initial
begin
// initialize the input
a=0;
b=0;

#20; //{a>b}= 1'b1;
    a=8'b00000111;
    b=8'b00000110;
#20; //{a==b}= 1'b1;
     a=8'b00000000;
     b=8'b00000000;
#20; //{a<b}= 1'b1;
     a=8'b00000010;
     b=8'b00000101;
#20;
$finish;
end

initial
begin
$monitor ("a=%b b=%b a_greater=%b a_equal=%b a_less=%b",a,b,a_greater,a_equal,a_less);
end
endmodule