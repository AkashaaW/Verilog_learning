module d_flipflop(rst, clk, D, Q);
input rst,clk,D;
output reg Q;

always @(posedge clk or posedge rst)
 begin 
 if(rst)
  Q<=0;
 else 
  Q<=D;
 end

endmodule