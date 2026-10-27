module mux_8to1(Y, S0, S1, S2, I0, I1,I2,I3,I4,I5,I6,I7);
 input S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7;
 output Y;

 wire W0,W1;

mux_4to1 m1(
 .Y(W0),
 .S0(S0),
 .S1(S1),
 .I0(I0),
 .I1(I1),
 .I2(I2),
 .I3(I3)

);

mux_4to1 m2(
 .Y(W1),
 .S0(S0),
 .S1(S1),
 .I0(I4),
 .I1(I5),
 .I2(I6),
 .I3(I7)

);

mux_2to1 m3(
 .Y(Y),
 .S(S2),
 .I0(W0),
 .I1(W1)
);

endmodule