module mux53beh(input logic [2:0] u, v, w, x, y,
                input logic [2:0] s,
                output logic [2:0] m);
                
   
   
always_comb
    
  if (s[2])
    m = y;
  else
    if (s[1])
      if (s[0])
        m = x;
      else
        m = w;
    else
      if (s[0])
        m = v;
      else
        m = u;
        
endmodule 