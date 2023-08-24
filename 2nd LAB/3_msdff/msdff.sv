module msdff(input logic D, Clock,
             output logic Q, Qbar);
  logic Qm, Qs /* synthesis keep */;
  
  gdlatch Master(D, ~Clock, Qm);
  gdlatch Slave(Qm, Clock, Qs);
  assign Q = Qs;
  assign Qbar = ~Q;
endmodule 