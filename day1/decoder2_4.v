module decoder2_4(input [1:0] a, output reg [3:0] y);

always@(*)begin 
case(a)
   2'b00 : y=4'b0001; 
   2'b01 : y=4'b0010; 
   2'b10 : y=4'b0100; 
   2'b11 : y=4'b1000; 
endcase
end
endmodule

module decoder2_4_tb;

reg [1:0] a;
wire [3:0] y;

decoder2_4 de(a,y);

initial
begin

$monitor("a=%b, y=%b", a, y);
a=2'b00; #10;
a=2'b01; #10;
a=2'b10; #10;
a=2'b11; #10;

$finish;
end

endmodule 
