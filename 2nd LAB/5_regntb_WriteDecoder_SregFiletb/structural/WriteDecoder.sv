module WriteDecoder(input logic [2:0] Addr,
                    input logic regWE,
                    output logic o0, o1, o2, o3, o4, o5, o6, o7);
  
  always_comb begin
    if (regWE) begin
      o0 = 0; o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = 0;
      case (Addr)
        0:         o0 = 1;
        1:         o1 = 1;
        2:         o2 = 1;
        3:         o3 = 1;
        4:         o4 = 1;
        5:         o5 = 1;
        6:         o6 = 1;
        7:         o7 = 1;
        default: begin   o0 = 0; o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = 0; end
      endcase
    end
    else      begin      o0 = 0; o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = 0; end
  end
endmodule 