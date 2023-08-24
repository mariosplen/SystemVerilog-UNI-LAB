module regn
      # (parameter N = 32) 
        (input logic [N-1:0] D, 
         input logic Clk, CLR, 
         output logic [N - 1:0] Q);

  always_ff@(posedge Clk)
  
    if(CLR) Q <= N-1'b0;
    else    Q <= D;

endmodule 