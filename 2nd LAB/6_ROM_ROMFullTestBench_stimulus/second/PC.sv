module PC
           #(parameter width = 5)
            (input logic CLR, clk,
             output logic [width-1:0] Q);
  always_ff @(posedge clk) begin
  if (CLR)
    Q <= 0;
  else
    Q <= Q + 1;
  
  end 
endmodule 