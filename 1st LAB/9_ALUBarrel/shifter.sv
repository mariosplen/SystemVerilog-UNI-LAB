module shifter(input logic [7:0] a,
               input logic [2:0] amt,
               output logic [7:0] LSL, LSR, ASR, ROR);

  
  always_comb begin
    // Logical shift left LSL
    case(amt)
      0: LSL = a;
      1: LSL = {a[6], a[5], a[4], a[3], a[2], a[1], a[0], 1'b0};
      2: LSL = {a[5], a[4], a[3], a[2], a[1], a[0], 1'b0, 1'b0};
      3: LSL = {a[4], a[3], a[2], a[1], a[0], 1'b0, 1'b0, 1'b0};
      4: LSL = {a[3], a[2], a[1], a[0], 1'b0, 1'b0, 1'b0, 1'b0};
      5: LSL = {a[2], a[1], a[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
      6: LSL = {a[1], a[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
      7: LSL = {a[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
      default: LSL = 8'bxxxxxxxx;
    endcase  
    // Logical shift right LSR
    case(amt)
      0: LSR = a;
      1: LSR = {1'b0, a[7], a[6], a[5], a[4], a[3], a[2], a[1]};
      2: LSR = {1'b0, 1'b0, a[7], a[6], a[5], a[4], a[3], a[2]};
      3: LSR = {1'b0, 1'b0, 1'b0, a[7], a[6], a[5], a[4], a[3]};
      4: LSR = {1'b0, 1'b0, 1'b0, 1'b0, a[7], a[6], a[5], a[4]};
      5: LSR = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, a[7], a[6], a[5]};
      6: LSR = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, a[7], a[6]};
      7: LSR = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, a[7]};
      default: LSR = 8'bxxxxxxxx;
    endcase  
    // Arithmetic Shift Right ASR
    case(amt)
      0: ASR = a;
      1: ASR = {a[7], a[7], a[6], a[5], a[4], a[3], a[2], a[1]};
      2: ASR = {a[7], a[7], a[7], a[6], a[5], a[4], a[3], a[2]};
      3: ASR = {a[7], a[7], a[7], a[7], a[6], a[5], a[4], a[3]};
      4: ASR = {a[7], a[7], a[7], a[7], a[7], a[6], a[5], a[4]};
      5: ASR = {a[7], a[7], a[7], a[7], a[7], a[7], a[6], a[5]};
      6: ASR = {a[7], a[7], a[7], a[7], a[7], a[7], a[7], a[6]};
      7: ASR = {a[7], a[7], a[7], a[7], a[7], a[7], a[7], a[7]};
      default: ASR = 8'bxxxxxxxx;
    endcase  
    // Circulat rotation right ROR
    case(amt)
     0: ROR = a;
      1: ROR = {a[0], a[7], a[6], a[5], a[4], a[3], a[2], a[1]};
      2: ROR = {a[1], a[0], a[7], a[6], a[5], a[4], a[3], a[2]};
      3: ROR = {a[2], a[1], a[0], a[7], a[6], a[5], a[4], a[3]};
      4: ROR = {a[3], a[2], a[1], a[0], a[7], a[6], a[5], a[4]};
      5: ROR = {a[4], a[3], a[2], a[1], a[0], a[7], a[6], a[5]};
      6: ROR = {a[5], a[4], a[3], a[2], a[1], a[0], a[7], a[6]};
      7: ROR = {a[6], a[5], a[4], a[3], a[2], a[1], a[0], a[7]};
      default: ROR = 8'bxxxxxxxx;
    endcase
  end

endmodule 