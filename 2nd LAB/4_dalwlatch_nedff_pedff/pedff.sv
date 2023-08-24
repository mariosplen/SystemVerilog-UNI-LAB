module pedff(input logic D, Clk,
             output logic Q);

  always_ff@(posedge Clk)
    Q <= D;

endmodule 