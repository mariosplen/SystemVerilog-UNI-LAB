module sevensegprm(input logic [3:0] y,
                   output logic [6:0] segments);
  always_comb
    casez (y)
      //                          abc_defg
      4'b1???: segments =      7'b100_0010;  // d
      4'b?1??: segments =      7'b000_1000;  // A
      4'b??1?: segments =      7'b011_0000;  // E
      4'b???1: segments =      7'b011_1000;  // F
//      4'b1000: segments =      7'b100_0010;  // d
//      4'b0100: segments =      7'b000_1000;  // A
//      4'b0010: segments =      7'b011_0000;  // E
//      4'b0001: segments =      7'b011_1000;  // F
      default: segments =      7'b111_1111;  // Invalid

    endcase
endmodule