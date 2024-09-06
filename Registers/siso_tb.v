module sisotb;
reg clk;
reg clear,si;
wire so;
siso ins (.clk(clk), .clear(clear),.si(si),.so(so));

initial begin
clk = 0;
clear = 0;
si = 0;
#5 clear=1'b1;

#5 clear=1'b0;

#10 si=1'b1;

#10 si=1'b0;

#10 si=1'b0;

#10 si=1'b1;

#10 si=1'b0;
end
   always #5 clk = ~clk;
   initial begin
    
     $dumpfile("siso.vcd");
     $dumpvars(1);
     $monitor("clk=%0d,clear=%0d,si=%0d,so=%0d",clk,clear,si,so);
  #150 $finish;   
  end
 
endmodule
