`timescale 1ns/1ps

module tb_mux_2to1;
   reg S;
   reg I0,I1;

   wire Y;


mux_2to1 uut(
    .Y(Y),
    .I0(I0),
    .I1(I1),
    .S(S)
);
 
initial begin
$display("input = 10");
$monitor("Time=%0t S=%d Y=%b",$time,S,Y);

//assign input values
I0=1; I1=0;

//test1 
S=1;
#10

//test2
S=0;
#10

$finish;

end

endmodule