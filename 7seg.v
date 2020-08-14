module sevenseg(clk,reset,dd,Y);
  input[4:0]dd;
  input clk,reset;
  reg[19:0] ref_c;
  wire[1:0]lc;
  reg[3:0]X;
  reg[3:0]AN;
  output[6:0]Y;
  reg[6:0]Y;
  always@(posedge clk or posedge reset)
  begin
    if(reset==1)
      ref_c<=0;
    else
      ref_c<=ref_c+1;
   end
  assign lc=ref_c[19:18];
  always@(*)
  begin
    case(lc)
    2'b00: begin
           AN=4'b1110;
           X=dd[3:0];
           end
    2'b01: begin
           AN=4'b1101;
           X=dd[4];
           end
    default: begin
             AN=4'b1111;
             X=0;
             end
    endcase		
  end
  always@(*)
  begin
    case(X)
    4'b0    : Y=7'b0000001;      
    4'b01   : Y=7'b1111001;
    4'b010  : Y=7'b0010010;
    4'b011  : Y=7'b0000110;
    4'b0100 : Y=7'b1001100;
    4'b0101 : Y=7'b0100100;
    4'b0110 : Y=7'b0100000;
    4'b0111 : Y=7'b0001111;
    4'b1000 : Y=7'b0000000;
    4'b1001 : Y=7'b0000100;
    default : Y=7'b1111111;
    endcase
  end
endmodule
		       
