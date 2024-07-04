module sr_flipflop(input clk, s,r,  output reg q);

always@(posedge clk)begin

case({s,r})
2'b00 : q<=q;
2'b01 : q<=1'b0;
2'b10 : q<=1'b1;
2'b11 : q<=1'bx;
endcase
end
endmodule



module sr_flipflop_tb;

reg clk, s,r,;
wire q;

sr_flipflop sr(clk,s,r,q);

always #5 clk=~clk;
initial 
begin
clk=0;

s=0; r=0; #10
s=1; r=0; #10
s=0; r=0; #10
s=0; r=1; #10
s=1; r=1; #10;
$finish;
end
endmodule
