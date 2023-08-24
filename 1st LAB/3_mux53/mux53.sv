module mux53(input logic [2:0] u, v, w, x, y,
             input logic [2:0] s,
             output logic [2:0] m);
             
    logic [2:0] w1;
    logic [2:0] w2;
    logic [2:0] w3;
    
    mux23 mux23a(u, v, s[0], w1);
    mux23 mux23b(w, x, s[0], w2);
    mux23 mux23c(w1, w2, s[1], w3);
    mux23 mux23d(w3, y, s[2], m);
             
endmodule