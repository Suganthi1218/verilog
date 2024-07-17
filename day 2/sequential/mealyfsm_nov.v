

module mealyfsm_nov(clk,rst,x,y);

input clk,rst,x;

output reg y;

parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;

reg [1:0] cs,nst;

always@(posedge clk )begin

  if(rst) begin 
   y<=1'b0;
   cs<=s0;
end
else 
cs<=nst;
end

always@(*)begin

y=1'b0;
nst=cs;

case(cs)
s0: 
 if(x==1)
  nst=s1;
else 
nst=s0;

s1:
 if(x==1)
  nst=s1;
else
nst=s2;


s2: 
 if(x==1)
  nst=s3;
else
nst=s0;


s3:
 if(x==0)begin
  nst=s0;
y=1'b1;
end

else
nst=s1;
default : nst=s0;
endcase
end

endmodule



 module mealyfsm_nov_tb;

reg clk,rst,x;
wire y;

mealyfsm_nov fs(clk,rst,x,y);

initial
begin 
rst=1;#15;
rst=0; clk=0; x=0;
#10; x=1;
#10; x=0;
#10; x=1;
#10; x=0;
#10; x=1;
#10; x=0;
#10; x=1;
$finish;
end
always #5 clk=~clk;
 endmodule
