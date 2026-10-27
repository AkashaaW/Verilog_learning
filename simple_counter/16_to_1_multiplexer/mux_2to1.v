module mux_2to1(Y,I0,I1,S);
   input S,I0,I1;
   output Y;
 
assign Y = (~S&I0) | (S&I1);

endmodule