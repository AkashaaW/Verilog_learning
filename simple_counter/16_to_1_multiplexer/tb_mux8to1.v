`timescale 1ns/1ps

module tb_mux8to1;
   reg S0,S1,S2;
   reg I0,I1,I2,I3,I4,I5,I6,I7;
   

   wire Y;

  
 mux_8to1 uut(
      .Y(Y),
      .S0(S0),
      .S1(S1),
      .S2(S2),
      .I0(I0),
      .I1(I1),
      .I2(I2),
      .I3(I3),
      .I4(I4),
      .I5(I5),
      .I6(I6),
      .I7(I7)

);

initial begin
   $display("Input = 10101010\n");
   $monitor("Time = %0t S2=%b S1=%b S0=%b Y=%b",$time,S2, S1, S0, Y);

   //Assign input values
   I0=1; I1=0; I2=1; I3=0;
   I4=1; I5=0; I6=1; I7=0;

   
   //test 1: select I0
   S2=0; S1=0 ; S0=0;
   #10
  
    //test 2: select I1
   S2=0; S1=0 ; S0=1;
   #10

   #10
   
   //test 3: select I2
  S2=0; S1=1 ; S0=0;
   #10
   
   //test 4: select I3
  S2=0; S1=1 ; S0=1;
   #10

     //test 5: select I4
  S2=1; S1=0 ; S0=0;
   #10

  //test 5: select I5
  S2=1; S1=0 ; S0=1;
   #10
  //test 6: select I6
  S2=1; S1=1 ; S0=0;
   #10
  //test 7: select I7
  S2=1; S1=1 ; S0=1;
   #10


 
  $finish;

end 

endmodule
  

