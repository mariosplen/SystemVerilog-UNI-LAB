module lab2p4(input logic D, Clock,
              output logic Qa, Qb, Qc);

  dalwlatch first(D, Clock, Qa);
  pedff second(D, Clock, Qb);
  nedff third(D, Clock, Qc);

endmodule 