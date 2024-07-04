module sr_ff_neg(input clk,s,r,  output reg q);

always@(posedge clk)begin

case({s,r})

2'b00 : q<=q;
2'b01 : q=1'b0;
2'b10 : q=1'b1;
2'b11 : q=1'bx;

endcase 

end

endmodule

module sr_ff_neg_tb;

reg clk,s,r;
wire q;

sr_ff_neg srn(clk,s,r,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial
begin 
$monitor("clk=%0b, s=%0b, r=%0b, q=%0b", clk, s, r, q);


s=1; r=0; #10
s=0; r=0; #10
s=0; r=0; #10
s=0; r=1; #10
s=1; r=1; #10;
$stop;
end
endmodule
