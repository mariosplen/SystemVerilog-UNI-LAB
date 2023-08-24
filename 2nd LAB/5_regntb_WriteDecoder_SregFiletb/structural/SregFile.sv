module SregFile(input logic [31:0] DataIn,
                input logic [2:0] Addr,
                input logic regWE, CLR, clk,
                output logic [31:0] DataOut);

  logic DWo0, DWo1, DWo2, DWo3, DWo4, DWo5, DWo6, DWo7; 
  logic [31:0] Ro0, Ro1, Ro2, Ro3, Ro4, Ro5, Ro6, Ro7;
  
    WriteDecoder WDinst(Addr, regWE, DWo0, DWo1, DWo2, DWo3, DWo4, DWo5, DWo6, DWo7);
    regN R0(DataIn, clk && DWo0, CLR, Ro0);
    regN R1(DataIn, clk && DWo1, CLR, Ro1); 
    regN R2(DataIn, clk && DWo2, CLR, Ro2);
    regN R3(DataIn, clk && DWo3, CLR, Ro3);
    regN R4(DataIn, clk && DWo4, CLR, Ro4);
    regN R5(DataIn, clk && DWo5, CLR, Ro5);
    regN R6(DataIn, clk && DWo6, CLR, Ro6);
    regN R7(DataIn, clk && DWo7, CLR, Ro7);
    mux3281 muxinst(Ro0, Ro1, Ro2, Ro3, Ro4, Ro5, Ro6, Ro7, Addr, DataOut);
    

endmodule

