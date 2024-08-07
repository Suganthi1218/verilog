module shift_register(
  input [4:0] a,
  input reg [1:0]s,
  output reg[4:0] q);
  
  always @(*) begin
    case(s)
      2'b00: q=a;
      2'b01: q=a<<1;
      2'b10: q=a>>1;
      default: q = 5'b00000; 
      endcase
  end
endmodule
