module ROMFulltestbench();

  logic [4:0]  Addr;  
  logic        clk, reset;
  logic [31:0] DataOut, DataOutExpected;
  logic [31:0] vectornum, errors;
  logic [36:0] testvectors[10000:0];

  // instantiate device under test
 ROM dut(Addr, clk, DataOut);

  // generate clock
  always 
    begin
      clk = 1; #5; clk = 0; #5;
    end

  // at start of test, load vectors
  // and pulse reset
  initial
    begin
    
      $readmemb("../../stimulus.tv", testvectors);
      vectornum = 0; errors = 0;
      reset = 0; #27; reset = 0; //optional Reset functionality
    end

  // apply test vectors on rising edge of clk
  always @(posedge clk)
    begin
      
		#10; {Addr, DataOutExpected} = testvectors[vectornum];
    
	 end

  // check results on falling edge of clk
  always @(negedge clk)
    if (~reset) begin // skip during reset - 
      if (DataOut !== DataOutExpected) begin  // check result
        $display("Error: inputs = %b", {Addr});
        $display("  outputs = %b (%b expected)",DataOut, DataOutExpected);
        errors = errors + 1;
      end
      
		vectornum = vectornum + 1;
      
		if (testvectors[vectornum] === 'hxxxxxxxx) 
		begin 
        $display("%d tests completed with %d errors", vectornum, errors);
		//$stop;
        $finish(0); //important to finish simulation
      end
    end
endmodule
