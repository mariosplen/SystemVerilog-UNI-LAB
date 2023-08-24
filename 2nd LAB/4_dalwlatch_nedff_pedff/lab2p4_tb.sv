module lab2p4_tb();

  logic D, Clk;
  logic Qa,Qb,Qc;
  
  lab2p4 dut(D, Clk, Qa, Qb, Qc);
  
  initial begin
    Clk = 1;        #10;
    Clk = 0; D = 0; #10;
    Clk = 1; D = 0; #10;
    Clk = 0;        #10;    // setting 0 as initial Values


    Clk = 0; D = 0; #50;
    Clk = 1; D = 0; #50;
    Clk = 0; D = 1; #50;
    Clk = 1; D = 1; #50;
    
  end
endmodule  