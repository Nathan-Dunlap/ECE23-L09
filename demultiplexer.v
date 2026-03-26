module demultiplexer
#(
    parameter BIT_COUNT = 8
)
(
    input [BIT_COUNT-1:0] In,
    input [1:0] Sel,
    input Enable,
    output [BIT_COUNT-1:0] a,
    output [BIT_COUNT-1:0] b,
    output [BIT_COUNT-1:0] c,
    output [BIT_COUNT-1:0] d
);

    assign a = (Enable && Sel == 2'b00 ? In : 0);
    assign b = (Enable && Sel == 2'b01 ? In : 0);
    assign c = (Enable && Sel == 2'b10 ? In : 0);
    assign d = (Enable && Sel == 2'b11 ? In : 0);
    

endmodule
