module dalwlatch(input logic D, Clk,
                 output logic Q);

  always_latch
    if (Clk) Q <= D;

endmodule 