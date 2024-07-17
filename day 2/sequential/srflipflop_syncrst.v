module srflipflop_syncrst(
  
  input clk,s,r,rst,
  output reg  q);
  
  always @ (posedge clk) begin
    
    if(rst)
      q<=1'b0;  
    else  begin
      case({s,r})
          2'b00 : q <= q;
          2'b01 : q <= 1'b0;
          2'b10 : q <= 1'b1;
          2'b11 : q <= 1'bx;
      endcase
    end 
  end
    
endmodule   

module srflipflop_syncrst_tb;
  
  reg clk, s, r,rst ;
  wire q;
  
  srflipflop_syncrst sr(.clk(clk),.rst(rst),.s(s),.r(r),.q(q));
   always #5 clk=~clk;
  initial
    begin
      $monitor("clk=%b, rst=%b, s=%b, r=%b, q=%b", clk, rst, s, r, q);
      rst=1; clk=-0; s=0; r=0;
      
      #5  rst=0; s=0; r=1;
      #10 s=1;  r=0;
      #10 s=0; r=0; 
      #10 s=1; r=1; 
      #10 $finish;
    end
  initial
    begin
      $dumpfile("srflipflop_syncrst.vcd");
      $dumpvars;
    end
endmodule 
      
