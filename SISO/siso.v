module siso(clk, rst, D, Q);
  input clk,rst,D;
  output Q;
  
  wire w0,w1,w2;


d_flipflop f1(
     .Q(w0),
     .D(D),
     .clk(clk),
     .rst(rst)
);

d_flipflop f2(
     .Q(w1),
     .D(w0),
     .clk(clk),
     .rst(rst)


);

d_flipflop f3(
     .Q(w2),
     .D(w1),
     .clk(clk),
     .rst(rst)
);

d_flipflop f4(
     .Q(Q),
     .D(w2),
     .clk(clk),
     .rst(rst)

);

endmodule