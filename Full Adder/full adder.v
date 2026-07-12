module adder8_3(
input a,
input b,
input cin,
output reg sum,
output reg cout
);

always@(a,b,cin)
begin
 sum =a^b^cin;
 cout= (a&b) | (b&cin) | (a&cin);
end
endmodule