module ROM (input logic[4:0] Addr,
            input logic clk,
            output logic[31:0] DataOut); 
  logic [31:0] rom [32];
   
  initial begin 
    $readmemh("./command_mem.mem", rom); 
  end 
  
  always @(posedge clk) begin
    DataOut = rom[Addr];
  end
  
endmodule
