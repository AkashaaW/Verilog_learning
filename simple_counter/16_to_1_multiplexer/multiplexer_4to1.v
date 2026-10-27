module multiplexer_4to1(Y, S0, S1 , I0 , I1, I2, I3);
       input S0,S1,I0,I1,I2,I3;
       output Y;

  assign Y = (I0&~S1&~S0)|(I1&~S1&S0)|(I2&S1&~S0)|(I3&S1&S0);

endmodule