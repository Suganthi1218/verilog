module Updown_counter(input clk,
                      input rst,
                  input din,
                  output reg [3:0] count);
  
  always @ (posedge clk or posedge rst)begin
    
    if(rst) begin
      count<=0;
    end
    else begin
      
      if(din) 
        
        count <= count + 1;
      else 
       count <= count - 1;
    end
  end
endmodule

module Updown_counter_tb;
  
  reg clk, rst;
  reg [3:0] din;
  wire [3:0] count;
  
  Updown_counter ud (clk, rst, din, count);
  
  initial
    begin
      $monitor("time=%0t,clk=%b, rst=%b, din=%d,count=%d", $time, clk, rst, din, count);
      rst=1; clk=0;din=0;
      #5 rst=0; din=1;
      #5 din=0;
      #5 din=1;
      #20 $finish;
    end
  always #5 clk = ~clk;
  initial
    begin
      $dumpfile("Updown_counter.vcd");
      $dumpvars;
    end
endmodule
