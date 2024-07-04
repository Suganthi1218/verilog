module t_flipflop(input t,clk, output reg q);

always@(posedge clk)begin 
q=1'b0;
if(t)
 q<=~q;
else
 q<=q;
end
endmodule


module t_flipflop_tb;

reg t,clk;
wire q;

t_flipflop tff(t,clk,q);

initial
begin
$monitor("clk=%0b, t=%0b, q=%0b",clk, t, q);
 clk=1; t=0; #20

 clk=0; t=1; #20

 clk=1; t=1; #20

 clk=0; t=0; #20
$finish;
end
endmodule
