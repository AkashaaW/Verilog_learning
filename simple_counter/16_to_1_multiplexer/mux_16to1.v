module mux_16to1(Y, S0, S1, S2, S3, I0, I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15);
 
input S0,S1,S2,S3,I0,I1,I2,I3,I4,I5,I6,I7
,I8,I9,I10,I11,I12,I13,I14,I15;
 output Y;

 wire W0,W1;

mux_8to1 m1(
 .Y(W0),
 .S0(S0),
 .S1(S1),
 .S2(S2),
 .I0(I0),
 .I1(I1),
 .I2(I2),
 .I3(I3),
 .I4(I4),
 .I5(I5),
 .I6(I6),
 .I7(I7)

);

mux_8to1 m2(
 .Y(W1),
 .S0(S0),
 .S1(S1),
 .S2(S2),
 .I0(I8),
 .I1(I9),
 .I2(I10),
 .I3(I11),
 .I4(I12),
 .I5(I13),
 .I6(I14),
 .I7(I15)

);

mux_2to1 m3(
 .Y(Y),
 .S(S3),
 .I0(W0),
 .I1(W1)
);

endmodule