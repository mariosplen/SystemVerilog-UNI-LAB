module alunbit 
    #(parameter Nbits = 8)
     (input logic [Nbits-1:0] A, B,
      input logic [1:0] ALUControl,
      output logic [Nbits-1:0] Result,
      output logic [3:0] NZCV);
      
  logic [Nbits-1:0] NotResult;
  logic [Nbits-1:0] condinvb;
  logic [Nbits-1:0] sum;
  logic cout;
  logic wv;
  logic wc;
  logic wz;
  logic wn;
  assign condinvb = ALUControl[0] ? ~B : B;
  assign {cout, sum} = A + condinvb + ALUControl[0];
  always_comb begin
    casex (ALUControl[1:0])
      2'b0?: Result = sum;
      2'b10: Result = A & B;
      2'b11: Result = A | B;
    endcase
    
    NotResult = ~Result;
    wn = Result[Nbits-1];
    wz = &NotResult;
    wc = (cout & (~ALUControl[1]));
    wv = ~ALUControl[1] & (A[Nbits-1] ^ sum[Nbits-1]) & ~(ALUControl[0] ^ A[Nbits-1] ^ B[Nbits-1]);

    NZVC = {wn, wz, wc, wv};
  end
  
endmodule
