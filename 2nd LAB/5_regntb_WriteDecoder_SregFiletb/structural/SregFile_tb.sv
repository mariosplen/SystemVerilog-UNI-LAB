module SregFile_tb();

  logic [31:0] DataIn;
  logic [2:0] Addr;
  logic regWE, CLR, clk;
  logic [31:0] DataOut;
  
  SregFile dut(DataIn, Addr, regWE, CLR, clk, DataOut);
  
  initial begin
    
    // write 0xFFFFFFFF to 6th register 
    CLR = 0; clk = 0; regWE = 1; #10;
    Addr = 5; DataIn ='hFFFFFFFF; clk = 1; #10;
    clk = 0; #10;
    // clear 5th register and write 0xAAAAAAAA to first register
    CLR = 1; clk = 1; #10;
    Addr = 0; clk =0 ; CLR =0 ;#10;
    DataIn = 'hAAAAAAAA; clk = 1; #10;
    
    
    
       
    
  end
endmodule 