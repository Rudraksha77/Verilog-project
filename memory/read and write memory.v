module memory(data,address,read,write,clk,data_reg);
input read, write, clk; //read → Read control , //write → Write control , //clk → Clock                        
input [7:0] address;        //address → Memory location
input [7:0] data;        //data → Data to write into memory 
output reg [7:0] data_reg;   //data_reg → Data read from memory

reg [7:0] my_memory [0:8'hFF]; //Memory Declaration

parameter load_file = "mem.txt"; //This stores the filename.contains initial values 00000001,00000010. like this When simulation starts,

initial
begin
    data_reg <= 8'b00000000;
    $readmemb(load_file, my_memory); //This runs only once at the beginning of simulation.It loads data from "mem.txt" TO my_memory
end
always @(posedge clk)
begin
    if (read == 1'b1)
        data_reg <= my_memory[address];

    else if (write == 1'b1)
        my_memory[address] <= data;

    else
        data_reg <= 8'b00000000;
      //  $readmemb(load_file, my_memory);

end

endmodule