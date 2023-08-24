module Recbeh(input logic CK,
           input logic RESET,
           input logic X,
           output logic Z);
  
  
  typedef enum logic [1:0] {A, B, C, D} statetype;
  
  statetype state, nextstate;
  
  always_ff@(posedge CK, posedge RESET)
    if(RESET) state <= A;
    else      state <= nextstate;
  
  always_comb      
    case(state)
      A : nextstate =  X ? B : state; 
      B : nextstate = ~X ? C : state;
      C : nextstate =  X ? D : A;
      D : nextstate = ~X ? C : B;
    endcase
    
  
  assign Z = (state == D) && ~X;
   
endmodule 