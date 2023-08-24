module segprm(input logic D, A, E, F,
              output logic [6:0] sevenseg);
  logic [3:0] wy;
  
  prm prminst(D, A, E, F, wy);
  sevensegprm sevensegprminst(wy, sevenseg);
  
endmodule