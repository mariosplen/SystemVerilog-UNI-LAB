module ROMFulltestbench();
  logic        clk, CLR;
  logic [31:0] DataOut, DataOutExpected;
  logic [31:0] vectornum, errors;
  logic [31:0] testvectors[10000:0];

  
  
  PCROM dut(CLR, clk, DataOut);
 
 
 
  always begin
    begin
      clk = 1; #5; clk = 0; #5;
    end
  end

  
  
  initial begin
    CLR = 1; 
    $readmemb("../../stimulus.tv", testvectors);
    vectornum = 0; errors = 0;
  end
  
  
  
  always @(posedge clk) begin
    begin
      
      CLR = 0; {DataOutExpected} = testvectors[vectornum];
	end
  end 

  

  always @(negedge clk) begin
    #10; begin // this delay is needed because in the first clock pulse we are clearning the PC
      if (DataOut !== DataOutExpected) begin
        $display("  outputs = %b (%b expected)",DataOut, DataOutExpected);
        errors = errors + 1;
      end
      
      vectornum = vectornum + 1;
    
	  if (testvectors[vectornum] === 'hxxxxxxxx) begin
        $display("%d tests completed with %d errors", vectornum, errors);
        $finish(0);
      end
    end
  end
  
endmodule
