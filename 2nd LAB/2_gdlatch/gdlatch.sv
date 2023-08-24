module gdlatch(input logic D, Clk, 
               output logic Q);
  logic S_g, R_g, Qa, Qb /* synthesis keep */;
 
  assign S_g = ~(D && Clk);
  assign R_g = ~(~D && Clk);
  assign Qa = ~(S_g && Qb);
  assign Qb = ~(R_g && Qa);
  assign Q = Qa;
endmodule 