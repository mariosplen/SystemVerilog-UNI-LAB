module farc4bit(input logic [3:0] a, b,
                input logic cin,
                output logic [3:0] s,
                output logic cout);
         
  logic c1, c2, c3;
  
  fa1bit fa1bita(a[0], b[0], cin, s[0], c1);
  fa1bit fa1bitb(a[1], b[1], c1, s[1], c2);
  fa1bit fa1bitc(a[2], b[2], c2, s[2], c3);
  fa1bit fa1bitd(a[3], b[3], c3, s[3], cout);
  
endmodule