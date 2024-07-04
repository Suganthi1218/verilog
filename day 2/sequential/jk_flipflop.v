module jk_flipflop(input j,k,clk, output reg q);

always@(posedge clk)begin
 case({j,k})
2'b00 : q<=q;
2'b01 : q<=0;
2'b10 : q<=1;
2'b11 : q<=~q;
endcase
end
endmodule


module jk_flipflop_tb;

reg j,k,clk;
wire q;

jk_flipflop jk(j,k,clk,q);


initial
begin 
$monitor("clk=%0b, j=%0b, k=%0b, q=%0b", clk, j, k, q);


clk=1; j=0; k=1; #10
clk=0; j=0; k=1; #10

clk=1; j=0; k=0; #10
clk=0; j=0; k=0; #10

clk=1; j=1; k=0; #10
clk=0; j=1; k=0; #10

clk=1; j=1; k=1; #10
clk=0; j=1; k=1; #10;

end
endmodule 
