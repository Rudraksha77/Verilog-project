
module demux8_1(in1,s1,s2,s3,out0,out1,out2,out3,out4,out5,out6,out7);
input in1;
input s1,s2,s3;

output reg out0,out1,out2,out3,out4,out5,out6,out7;
always@(in1,s1,s2,s3)
begin
// Make all outputs 0
    out0 = 1'b0;
    out1 = 1'b0;
    out2 = 1'b0;
    out3 = 1'b0;
    out4 = 1'b0;
    out5 = 1'b0;
    out6 = 1'b0;
    out7 = 1'b0;

case({s3,s2,s1})

        3'b000: out0 = in1;
        3'b001: out1 = in1;
        3'b010: out2 = in1;
        3'b011: out3 = in1;
        3'b100: out4 = in1;
        3'b101: out5 = in1;
        3'b110: out6 = in1;
        3'b111: out7 = in1;
        default:
        begin
            out0 = 1'b0;
            out1 = 1'b0;
            out2 = 1'b0;
            out3 = 1'b0;
            out4 = 1'b0;
            out5 = 1'b0;
            out6 = 1'b0;
            out7 = 1'b0;
            end
endcase
end
endmodule