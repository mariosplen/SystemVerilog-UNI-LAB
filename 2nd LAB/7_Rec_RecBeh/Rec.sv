module Rec(input logic CK,
           input logic RESET,
           input logic X,
           output logic Z);
  
  logic dff1out;
  logic dff2out;
  logic dff1in;
  
  assign dff1in =(dff1out && X && ~dff2out)||(dff2out && ~X);
  
  dffr dffr1(CK, RESET, dff1in, dff1out);
  dffr dffr2(CK, RESET, X, dff2out);
  always_ff @(posedge CK)
    Z = (dff2out && dff1out && ~X);
    
endmodule 