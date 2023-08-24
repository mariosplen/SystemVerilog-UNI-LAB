module fa1bit(input logic a, b, cin,
              output logic s, cout);
              
  logic w;
  assign w = a ^ b;
  
  assign s = w ^ cin;
  assign cout = w ? cin : b;
endmodule