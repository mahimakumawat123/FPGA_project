module bcd_tb;
reg[3:0]A,B;
wire[3:0]S;
wire Co;
bcd_adder yo(A,B,S,Co);
initial
begin
  A=4'b0011;
  B=4'b0100;
  #10;
  A=4'b1001;
  B=4'b1001;
end
endmodule

