module Dlatch(
    input E,
    input D,
    output reg Q,
    output NotQ
);

    always @(E, D) begin 
        if (E)
            Q <= 1; 
        else if (D)
            Q <= 0;
    end
    
    assign NotQ = ~Q; 
    
endmodule