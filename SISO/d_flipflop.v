module d_flipflop(clk,rst,D,Q);
   input D,rst,clk;
   output Q;

jk_flipflop f(
     .Q(Q),
     .J(D),
     .K(~D),
     .clk(clk),
     .rst(rst)
);

endmodule


    
