module bcd_counter_tb;
  reg clk,reset;
  wire [3:0]y;
  
  bcd_counter bcd(.clk(clk),.reset(reset),.y(y));
  
  initial begin
    reset=1;clk=0;
    #10
    reset=0;
    #100
    $finish;
  end
  
  always #2clk=~clk;
  
  initial begin
    $monitor("%t | clk=%0b | reset=%0b | y=%0d",$time,clk,reset,y);
  end
endmodule
