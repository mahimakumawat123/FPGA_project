//'timescale 1ns/1ps
module mux_tb2;
 reg [31:0]A,B;
 reg [1:0]S;
 wire [31:0] Y;
 integer i,j;
 mux41 m(A,B,S,Y);
 initial
  begin
   A=32'b0101;
   B=32'b010110;
   S=2'b00;
   for(i=0;i<5;i=i+1)
   begin : outer_loop
     A=A+32'b1010;
     B=B+32'b1011;
     for(j=0;j<4;j=j+1)
     begin : inner_loop
       S=S+2'b01;
       #5;
     end : inner_loop
     #5;
   end : outer_loop
  end
endmodule  