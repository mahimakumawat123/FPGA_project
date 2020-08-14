module sevenseg_tb;
reg[3:0]A,B;
wire[6:0]M,N;
sevseg_bcd_display k(A,B,M,N);
initial
begin 
  A=6;
  B=9;
  #10;
  A=3;
  B=2;
  #10;
  A=9;
  B=9;
  #10;
  A=0;
  B=0;
  #10;
  A=5;
  B=9;
end
endmodule
  
