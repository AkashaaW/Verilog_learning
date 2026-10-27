`timescale 1ns/1ps

module tb_4to1_multiplexer;
   reg S0,S1;
   reg I0,I1,I2,I3;
   

   wire Y;

  
 multiplexer_4to1 uut(
      .Y(Y),
      .S0(S0),
      .S1(S1),
      .I0(I0),
      .I1(I1),
      .I2(I2),
      .I3(I3)
);

initial begin
   $display("Input = 1010\n");
   $monitor("Time = %0t S1=%b S0=%b Y=%b",$time, S1, S0, Y);

   //Assign input values
   I0=1; I1=0; I2=1; I3=0;
   
   //test 1: select I0
   S1=0 ; S0=0;
   #10
  
    //test 2: select I1
   S1=0 ; S0=1;
   #10
   
   //test 3: select I2
   S1=1 ; S0=0;
   #10
   
   //test 4: select I3
   S1=1 ; S0=1;
   #10
 
  $finish;

end 

endmodule
  

