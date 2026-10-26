`timescale 1ns/1ps

module tb_counter;
  reg clk, rst;
  wire [31:0] count;

simple_counter uut (
  .clk(clk),
  .rst(rst),
  .count(count)
);

//generates clock
always #5 clk = ~clk;

//Initial signals
initial begin
    clk = 0;
    rst = 1; //to initialize the counter

    #12 rst = 0;
   
    #50 $finish;
end

//Display the counter output
initial begin
 $monitor("Time=%0t | Reset=%b | Count=0%d | Binary=%b", $time, rst, count, count);

end

endmodule
