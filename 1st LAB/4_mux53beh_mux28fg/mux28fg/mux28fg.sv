module mux28fg
      # (parameter bits = 8)
        (input logic [bits-1:0] x, y,
         input s,
         output logic [bits-1:0] m);

  genvar i;
  generate
    for (i = 0; i < bits; i++) begin: forloop
      mux2 mux2inst(x[i], y[i], s, m[i]);
    end
  endgenerate

endmodule