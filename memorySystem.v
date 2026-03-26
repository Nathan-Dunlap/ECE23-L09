module memorySystem(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
    );
  wire [7:0] data0, data1, data2, data3;
  wire store0, store1, store2, store3;
  wire [7:0] mem0, mem1, mem2, mem3;
  
  demultiplexer #(.BIT_COUNT(1)) demultStore(
    .In(store),
    .Sel(addr),
    .Enable(1'b1),
    .a(store0),
    .b(store1),
    .c(store2),
    .d(store3)
  );
  
  byte_memory byte0(
    .store(store0),
    .data(data0),
    .memory(mem0)
  );
  byte_memory byte1(
    .store(store1),
    .data(data1),
    .memory(mem1)
  );
  byte_memory byte2(
    .store(store2),
    .data(data2),
    .memory(mem2)
  );
  byte_memory byte3(
    .store(store3),
    .data(data3),
    .memory(mem3)
  );
  demultiplexer #(.BIT_COUNT(8)) demultMain(
    .In(data),
    .Sel(addr),
    .Enable(1'b1),
    .a(data0),
    .b(data1),
    .c(data2),
    .d(data3)
  );
  multiplexer mult(
    .A(mem0),
    .B(mem1),
    .C(mem2),
    .D(mem3),
    .Sel(addr),
    .Enable(1'b1),
    .Out(memory)
  );
  

endmodule
