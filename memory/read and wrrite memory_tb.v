`timescale 1ns/1ns 
module memory_test;
reg read, write, clk;
reg [7:0] address; 
reg [7:0] data; 
wire [7:0] data_reg;

// instantiate the unit under test(uut)
memory  inst_memory(
.read(read),         
.write(write),
.clk(clk),
.address(address),
.data(data),
.data_reg(data_reg)
);

 always #10 clk=~clk; 
initial
begin
// initialize the input
read=0;
write=0;
clk=0;
address=0;
data=0;


#20;
write=1;
    address = 8'd0; data = 8'b00001000; #20;
    address = 8'd1; data = 8'b10010001; #20;
    address = 8'd2; data = 8'b00001010; #20;
    address = 8'd3; data = 8'b01101000; #20;
    address = 8'd4; data = 8'b00101010; #20;
    address = 8'd5; data = 8'b00111000; #20;
    address = 8'd6; data = 8'b10001001; //#20;

    write = 0;
#20;
    // Read Operation
    read = 1;

    address = 8'd0; #20;
    address = 8'd1; #20;
    address = 8'd2; #20;
    address = 8'd3; #20;
    address = 8'd4; #20;
    address = 8'd5; #20;
    address = 8'd6;// #20;

    read = 0;
    #20;

$finish;
end

initial
begin
$monitor("time=%0t read=%b write=%b clk=%b address=%b data=%b data_reg=%b",$time,read,write,clk,address,data,data_reg);
end
endmodule