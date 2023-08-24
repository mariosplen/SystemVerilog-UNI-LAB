module mux4(input logic [7:0] a, b, c, d,
             input logic [1:0] sel,
             output logic [7:0] out);

  assign out = sel[1] ? (sel[0] ? d : c ) : (sel[0] ? b : a);

endmodule 