module comparator_4bit(input [3:0] a,b,  output reg  a_gt_b ,  a_eq_b ,  a_ls_b );

always@(a ,b)begin

if(a>b)
   a_gt_b = 1'b1;
 else 
  a_gt_b =1'b0;

if(a == b)
 a_eq_b  = 1'b1;
 else 
a_eq_b =1'b0;

if(a<b)
 a_ls_b =1'b1;
 else 
   a_ls_b =1'b0;
end
endmodule 




module comparator_4bit_tb;

reg [3:0] a, b;
 wire  a_gt_b ,  a_eq_b ,  a_ls_b;

comparator_4bit c(a,b, a_gt_b ,  a_eq_b ,  a_ls_b);
initial
begin

$monitor("a=%b, b=%b, a_gt_b=%b, a_eq_b=%b, a_ls_b=%b", a,b,a_gt_b, a_eq_b, a_ls_b);

a=4'b0001;  b=4'b0010; #15

a=4'b0011;  b=4'b0111; #15

a=4'b0101;  b=4'b0100; #15

a=4'b0000;  b=4'b1111; #15

a=4'b1110;  b=4'b1110;  #15;

$finish;
end
endmodule


