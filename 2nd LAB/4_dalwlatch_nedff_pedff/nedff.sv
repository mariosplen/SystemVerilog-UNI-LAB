module nedff(input logic D, Clk,
             output logic Q);
             
  always_ff@(negedge Clk)
    Q <= D;

endmodule 