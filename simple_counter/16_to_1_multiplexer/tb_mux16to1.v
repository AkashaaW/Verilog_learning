`timescale 1ns/1ps

module tb_mux16to1;
   reg S0,S1,S2,S3;
   reg I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
   wire Y;

  
 mux_16to1 uut(
      .Y(Y),
      .S0(S0),
      .S1(S1),
      .S2(S2),
      .S3(S3),
      .I0(I0),
      .I1(I1),
      .I2(I2),
      .I3(I3),
      .I4(I4),
      .I5(I5),
      .I6(I6),
      .I7(I7),
      .I8(I8),
      .I9(I9),
      .I10(I10),
      .I11(I11),
      .I12(I12),
      .I13(I13),
      .I14(I14),
      .I15(I15)


);

initial begin
   $display("Input = 1010101010101010\n");
   $monitor("Time = %0t S3=%b S2=%b S1=%b S0=%b Y=%b",$time,S3, S2, S1, S0, Y);

   //Assign input values
   I0=1; I1=0; I2=1; I3=0;
   I4=1; I5=0; I6=1; I7=0;
   I8=1; I9=0; I10=1; I11=0;
   I12=1; I13=0; I14=1; I15=0;


   
  // Test 1: Select I0
S3=0; S2=0; S1=0; S0=0;
#10;

// Test 2: Select I1
S3=0; S2=0; S1=0; S0=1;
#10;

// Test 3: Select I2
S3=0; S2=0; S1=1; S0=0;
#10;

// Test 4: Select I3
S3=0; S2=0; S1=1; S0=1;
#10;

// Test 5: Select I4
S3=0; S2=1; S1=0; S0=0;
#10;

// Test 6: Select I5
S3=0; S2=1; S1=0; S0=1;
#10;

// Test 7: Select I6
S3=0; S2=1; S1=1; S0=0;
#10;

// Test 8: Select I7
S3=0; S2=1; S1=1; S0=1;
#10;

// Test 9: Select I8
S3=1; S2=0; S1=0; S0=0;
#10;

// Test 10: Select I9
S3=1; S2=0; S1=0; S0=1;
#10;

// Test 11: Select I10
S3=1; S2=0; S1=1; S0=0;
#10;

// Test 12: Select I11
S3=1; S2=0; S1=1; S0=1;
#10;

// Test 13: Select I12
S3=1; S2=1; S1=0; S0=0;
#10;

// Test 14: Select I13
S3=1; S2=1; S1=0; S0=1;
#10;

// Test 15: Select I14
S3=1; S2=1; S1=1; S0=0;
#10;

// Test 16: Select I15
S3=1; S2=1; S1=1; S0=1;
#10;

$finish;

end 

endmodule
  

