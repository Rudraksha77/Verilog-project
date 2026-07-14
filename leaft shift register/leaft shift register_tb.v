`timescale 1ns/1ns

module left_shift_test;

reg [7:0] d;
reg si, clk, id, clr;
wire so;

// Instantiate the module
left_shift uut(
    .d(d),
    .si(si),
    .clk(clk),
    .id(id),
    .clr(clr),
    .so(so)
);

// Clock
always #10 clk = ~clk;

initial
begin
    // Initial values
    clk = 0;
    clr = 0;
    id  = 0;
    si  = 0;
    d   = 8'b00000000;

    // Step 1: Clear the register
    clr = 1;
    #20;
    clr = 0;

    // Step 2: Load the data
    d = 8'b10110011;
    id = 1;
    #20;
    id = 0;

    // shift 1: Shift left with si = 1
    si = 1;
    #20;

    // shift 2: Shift left with si = 0
    si = 0;
    #20;

    // shift 3: Shift left with si = 1
    si = 1;
    #20;
    
    // shift 4: Shift left with si = 0
    si = 0;
    #20;
    
    // shift 5: Shift left with si = 0
    si = 1;
    #20;

    $finish;
end

endmodule