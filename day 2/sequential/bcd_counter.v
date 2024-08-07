module bcd_counter(
  input clk,reset,
  output reg[3:0]y);
  
  always @(posedge clk) begin
    if(reset || (y>=9))
      y<=4'b0000;
  else
    y<=y+1;
  end
endmodule
