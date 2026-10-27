module jk_flipflop(clk,rst,J,K,Q);
   input J, K,rst,clk;
   output reg Q;

  always @(posedge clk or posedge rst)
  begin
  if (rst)
    Q<=0;
  else
    Q<=(~Q&J) | (~K&Q);
  end
endmodule


    