module PCROM(input logic CLR, clk,
             output logic [31:0] DataOut);

  logic [4:0] counter;
  PC PCinst(CLR, clk, counter);
  ROM ROMinst(counter, clk, DataOut);
  
endmodule 