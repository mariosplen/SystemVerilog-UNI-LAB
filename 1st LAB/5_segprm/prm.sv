module prm (input logic D, A, E, F,
            output logic [3:0] y);
  always_comb

    if      (D) y = 'b1000;
    else if (A) y = 'b0100;
    else if (E) y = 'b0010;
    else if (F) y = 'b0001;
    else        y = 'b0000; // Invalid

endmodule