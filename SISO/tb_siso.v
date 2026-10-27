`timescale 1ns/1ps

module tb_siso;
  reg D, clk, rst;
  wire Q;

siso uut(
 .clk(clk),
 .rst(rst),
 .D(D),
 .Q(Q)

);

always #5 clk=~clk;

 // Display output after each rising clock edge
    always @(posedge clk) begin
        #1;
        $display("Time=%0t D=%b Q=%b", $time, D, Q);
    end

initial begin
  clk=0;
  rst=1;
  D=0;

$display("Input\n = 1011");
//$monitor("Time=%0t D=%b Q=%b", $time, D, Q);
#10 rst=0;

D=1;
#10;

D=0;
#10;

D=1;
#10;

D=1;
#10;

//let remaining bits to shift out
D=0;
#30;

$finish;
end
endmodule


