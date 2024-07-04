module dff_async(clk,rst,d,q);

input clk,rst,d;
output reg q;

always@(posedge clk or negedge rst)begin

if(!rst)
   q<=1'b0;
else 
q<=d;
end
endmodule



module dff_async_tb;

reg clk,rst,d;
wire q;

dff_async da(clk,rst,d,q);
always #5  clk=~clk;

initial
begin

clk=0; rst=1; d=0; 
 #5  rst=0; d=1;
#5   rst=1; d=1;
#5   rst=1; d=0;
$finish;
end
initial
begin
$monitor("clk=%0b,rst=%0b, d=%0b,q=%0b",clk, rst,d,q);
end
endmodule

