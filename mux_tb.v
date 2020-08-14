//'timescale 1ns / 1ps
module mux_tb;
 reg [31:0]A,B;
 reg S1,S0;
 wire [31:0] Y;
 
 mux41 m(A,B,S1,S0,Y);
 initial
 begin
   A=32'b0101;
   B=32'b010110;
   S1=1'b1;
   S0=1'b1;
   #20;
  
   A=32'b01010;
   B=32'b01111;
   S1=0;
   S0=1;
   #20;
  
   A=32'b01010;
   B=32'b01010;
   S1=1;
   S0=0;
   #20;
 
   A=32'b010100;
   B=32'b010010;
   S1=0;
   S0=0;
 end
endmodule
