module sync_4bit_upcounter(clk,rst,en,count);

input clk,rst,en;
output reg [3:0] count;

always@(posedge clk)begin

if(rst)
 count<=4'b0000;
else 
count<=count+1;
end
endmodule




module sync_4bit_upcounter_tb;

reg clk,rst,en;
wire count;

sync_4bit_upcounter uut(clk,rst,en,count);

always #5 clk=~clk;

initial
begin

clk=0; rst=0; en=0;
#10 rst=1; en=1;
#10 rst=0; en=1;
#10 rst=1; en=0;

$finish;
end
endmodule 
