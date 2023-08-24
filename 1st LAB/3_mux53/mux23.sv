module mux23 (input logic [2:0] a, b,
              input logic s,
              output logic [2:0] m);
              
    assign m = s ? b : a;
    
endmodule