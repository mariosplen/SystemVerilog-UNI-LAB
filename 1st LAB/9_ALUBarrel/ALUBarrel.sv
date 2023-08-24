module ALUBarrel(input logic [7:0] Rn, Rm,
                 input logic [2:0] amt,
                 input logic [1:0] opbarrel,
                 input logic [1:0] ALUControl,
                 output logic [7:0] Rd,
                 output logic N, Z, V, C,
                 output logic HS, LS, HI, LO, GE, LE, GT, LT);
                 
  logic [7:0] w1;
  logic [3:0] NZCV;
  Barrel8bit Barrel8bitinst(Rm, amt, opbarrel, w1);
  alunbit alunbitinst(Rn, w1, ALUControl, Rd, NZCV);
  assign V = NZCV[0];
  assign C = NZCV[1];
  assign Z = NZCV[2];
  assign N = NZCV[3];
  CompFlags CompFlagsinst(C, N, V, Z, HS, LS, HI, LO, GE, LE, GT, LT);
  
endmodule 