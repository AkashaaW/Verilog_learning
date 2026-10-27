`timescale 1ns/1ps

module tb_jkflipflop;

reg clk, J, K, rst;
wire Q;

jk_flipflop uut(
  .clk(clk),
  .J(J),
  .K(K),
  .rst(rst),
  .Q(Q)

);

always #5 clk = ~clk;

initial begin
  clk=0;
  rst=1;
  J=0;
  K=0;

$monitor("Time=%0t j=%b K=%b Q=%b", $time,J,K,Q);

#10 rst=0;

//Hold
J=0; K=0;
#10;

//Set
J=1;K=0;
#10;

//Reset
J=0; K=1;
#10;
 
//Toggle
J=1; K=1;
#20;

$finish;

end

endmodule