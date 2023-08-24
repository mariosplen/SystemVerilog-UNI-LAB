module Barrel8bit(input [7:0] a,
                  input [2:0] amt,
                  input [1:0] opbarrel,
                  output [7:0] rmout);
                  
  logic [7:0] LSL, LSR, ASR, ROR;
  
  shifter shifterinst(a, amt, LSL, LSR, ASR, ROR);
  mux4 mux4inst(LSL, LSR, ASR, ROR, opbarrel, rmout);

endmodule 