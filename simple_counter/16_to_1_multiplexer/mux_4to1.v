module mux_4to1(Y, S0, S1, I0, I1,I2,I3);
 input S0,S1,I0,I1,I2,I3;
 output Y;

 wire W0,W1;

mux_2to1 m1(
 .Y(W0),
 .S(S0),
 .I0(I0),
 .I1(I1)
);

mux_2to1 m2(
 .Y(W1),
 .S(S0),
 .I0(I2),
 .I1(I3)
);

mux_2to1 m3(
 .Y(Y),
 .S(S1),
 .I0(W0),
 .I1(W1)
);

endmodule