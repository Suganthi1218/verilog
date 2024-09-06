module tb;
  
  reg clk, rst, load;
  reg data_in;
  
  wire [7:0] data_out;
 
  sipo_1 u1 (load, clk, rst, data_in, data_out);
  always #1 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    clk = 0; rst = 0; load = 0; data_in = 1'b0;
    
    #2 rst = 1;
    
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b0;
    
    #4;
    
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b0;
    #2 load = 1'b0;
    
    #4;
    
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b1; data_in = 1'b1;
    #2 load = 1'b0;
    
    #4;
    
    #2 $stop;
    
  end
  initial begin
    $dumpfile("sipo_1.vcd");
    $dumpvars();
    $monitor("load=%0d,clk=%0d,rst=%0d,data_in=%0d,data_out=%0d",load,clk,rst,data_in,data_out);
    #50 $finish;
  end
endmodule
  
