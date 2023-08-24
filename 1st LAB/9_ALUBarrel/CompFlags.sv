module CompFlags(input logic C, N, V, Z,
                 output logic HS, LS, HI, LO, GE, LE, GT, LT);

    logic NxorV;
    logic NxnorV;
    logic notC;
    logic notZ;

    xor(NxorV, N, V);
    not(NxnorV, NxorV);
    not(notC,C);
    not(notZ, Z);


    assign HS = C;            //HS
    not(LO, C);               //LO
    and(HI, C, notZ);         //HI
    or(LS, notC, Z);          //LS
    not(GE, NxorV);           //GE
    or(LE, NxorV, Z);         //LE
    and(GT, NxnorV, notZ);    //GT
    assign LT = NxorV;        //LT

endmodule