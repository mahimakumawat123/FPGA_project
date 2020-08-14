module mux41(A,B,S,Y);
  input[31:0]A,B;
  input [1:0]S;
  output [31:0] Y;
  reg [31:0] Y1;
  assign Y=Y1;
  always@(*)
  begin
     case(S)
        2'b00 : begin
                assign Y1=A+B;
                end
        2'b01 : begin
                assign Y1=A-B;
                end
        2'b10 : begin
                assign Y1=A&B;
                end
        2'b11 : begin
                assign Y1=A|B;
                end
        default : begin
                  assign Y1=A^B;
                  end
     endcase
  end
endmodule
          
