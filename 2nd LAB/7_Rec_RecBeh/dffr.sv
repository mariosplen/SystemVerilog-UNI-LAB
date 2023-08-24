module dffr(input logic Clk,
           input logic clr,
           input logic D,
           output logic Q);
             
  always_ff@(posedge Clk)
    if(clr) Q <= 0;
    else    Q <= D;

endmodule 

