module sevseg_bcd_display(clk,reset,A,B,Y);
input clk,reset;
input[3:0]A,B;
output[6:0]Y;
wire[3:0]S;
wire Co;
wire[4:0]dd;
assign dd={Co,S};
bcd_adder t(A,B,S,Co);
sevenseg u(clk,reset,dd,Y);
endmodule

