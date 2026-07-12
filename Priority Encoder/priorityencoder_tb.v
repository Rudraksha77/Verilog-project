`timescale 1ns/1ns 
module priencoder8_3_test;
reg [7:0]in;
wire [2:0]out;

// instantiate the unit under test (uut)
priencoder8_3 inst_priencoder8_3(
.in(in),
.out(out)
);

initial
begin
// initialize the input
in=0;

#20 {in}=8'b10000000;
#20 {in}=8'b01000000;
#20 {in}=8'b00100000;
#20 {in}=8'b00010000;

#20 {in}=8'b00001000;
#20 {in}=8'b00000100;
#20 {in}=8'b00000010;
#20 {in}=8'b00000001;
#20;
$finish; 
end

initial
begin
$monitor("in=%b out=%b",in,out);
end
endmodule