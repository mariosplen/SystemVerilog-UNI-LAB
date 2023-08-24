module mux3281(input logic [31:0] D0, D1, D2, D3, D4, D5, D6, D7,
               input logic [2:0] S,
               output logic [31:0] out);
 
  always_comb
    case(S)
      0: out = D0;
      1: out = D1;
      2: out = D2;
      3: out = D3;
      4: out = D4;
      5: out = D5;
      6: out = D6;
      7: out = D7;
      default: out = 2'h00;
    endcase
endmodule 