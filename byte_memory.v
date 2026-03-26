module byte_memory(
    input store,
    input [7:0] data,
    output reg [7:0] memory
);

    always @(store, data) begin 
        if (store)
            memory <= data;
    end
endmodule
