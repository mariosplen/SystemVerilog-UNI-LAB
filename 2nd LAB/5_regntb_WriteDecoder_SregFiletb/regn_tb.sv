module regn_tb();

  logic D, Clk, CLR;
  logic Q;
  
  regn dut(D, Clk, CLR, Q);
  
  initial begin
  
  
    CLR = 0; D = 0; Clk =0; #10;
    CLR = 0; D = 0; Clk =1; #10;
    CLR = 0; D = 1; Clk =0; #10;
    CLR = 0; D = 1; Clk =1; #10;
    CLR = 1; D = 0; Clk =0; #10;
    CLR = 1; D = 0; Clk =1; #10;
    CLR = 1; D = 1; Clk =0; #10;
    CLR = 1; D = 1; Clk =1; #10;
    
  end
endmodule 
    
    