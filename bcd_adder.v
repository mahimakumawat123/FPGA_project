module bcd_adder(A,B,S,Co);
  input[3:0]A,B;
  output[3:0]S;
  output Co;
  reg[3:0]S;
  reg Co;
  wire[4:0]Z;
  wire C;

  assign Z=A+B;
  assign C=Z[4]|((Z[3]&Z[2])|(Z[3]&Z[1]));
 
  always@(*)
  begin
    case(C)
    1'b0:begin
           assign S=Z[3:0];
           assign Co=C;
         end
    1'b1:begin
           assign S=4'b0110+Z[3:0];
           assign Co=C;
         end
    endcase
  end
endmodule



