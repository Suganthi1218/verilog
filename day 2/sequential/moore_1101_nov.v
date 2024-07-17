module moore_1101_nov(input clk,rst,x, output reg y,
                      output reg [2:0] ns,ps);
  
  parameter s0=3'b000,
            s1=3'b001,
            s2=3'b010,
            s3=3'b011,
            s4=3'b100;
           
 
  
  always@(posedge clk)begin
    
    if(rst) begin
      ps<=s0;
      y<=1'b0;
    end else
      ps<=ns;
  end
  
  always@(*)begin 
case(ps)
      
s0 :begin
   y<=1'b0;
  if(x==1)
    ns<=s1;
  else
     ns<=s0;
end
      
      
  s1 :begin
  y<=1'b0; 
  if(x==1)
    ns<=s2;
  else
     ns<=s0;
end
    
s2 :begin
   y<=1'b0;
  if(x==1)
    ns<=s2;
  else
     ns<=s3;
end
    
s3 :begin
  y<=1'b0; 
if(x==1) ns<=s4;
else  ns<=s0;
end
      
s4 : begin
  y<=1'b1;
      
  if(x==1) ns<= s1;
else ns<= s0;
end
  endcase
 end
endmodule  

// Code your testbench here
// or browse Examples
module  moore_1101_nov_tb;
  
  reg clk, rst, x;
  wire y;
  wire [2:0] ns,ps;
  
  moore_1101_nov uut(clk, rst, x, y,ns,ps);
  
  
  initial begin
    $monitor("clk=%0b,rst=%0b,x=%0b,y=%0b,ns=%b,ps=%b",clk,rst,x,y,ns,ps);
      rst=1;  clk=0; x=1;
      #8  rst=0; 
    
       #7 x=1;
       #5 x=1;
       #5 x=0;
       #14 x=1;
       #13 x=0;
     
      

 
    #80 $finish;
 end
always #5 clk=~clk;
endmodule
