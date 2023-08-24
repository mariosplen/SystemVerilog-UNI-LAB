module rslatch41(input logic R, S, Clk, 
                 output logic Q);
                 
  logic R_g, S_g, Qa, Qb /* synthesis keep */;
  
  assign R_g = R && Clk;
  assign S_g = S && Clk;
  assign Qa = ~(R_g || Qb);
  assign Qb = ~ (S_g || Qa);
  assign Q = Qa;
endmodule