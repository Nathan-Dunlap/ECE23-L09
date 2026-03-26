module MemSys(
    input [7:0] data,
    input [1:0] addr,
    input store,
    output reg [7:0] out
    );
    
    always @(data, addr) begin 
        if (data)
            out <= 1; 
        else if (addr)
            out <= 0;
    end

endmodule