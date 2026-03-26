module multiplexer(    
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [1:0] Sel,
    input Enable,
    output [7:0] Out
);

    assign Out = Enable ? (Sel == 2'b00 ? A  :
                         Sel == 2'b01 ? B  :
                         Sel == 2'b10 ? C :
                         Sel == 2'b11 ? D : 0) 
                      : 0;

endmodule