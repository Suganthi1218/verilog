module tb;
  reg clk,load;
  reg[3:0]pi;
  wire so;
  PISO ins(clk,pi,load,so);
 
    initial begin
      clk = 0; pi = 0; load = 0; 
      #2
      load= 1'b1; pi=4'b1101;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
     
      load= 1'b1; pi=4'b1011;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
      load= 1'b1; pi=4'b1100;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
      load= 1'b1; pi=4'b1101;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2
      load=0;
      #2;
    end
  always #1 clk=~clk;  
  initial begin
    $dumpfile("PISO.vcd");
    $dumpvars();
            $monitor("clk=%0d,pi=%0d,load=%0d,so=%0d",clk,pi,load,so);
    #20 $finish;
  end
endmodule
