module halfadder(a,b,sum,carry);

input a,b;
output sum,carry;

assign sum=a^b;

assign carry =a&b;

endmodule

module halfadder_tb;

reg a,b;
wire sum,carry;

halfadder ha(a,b,sum,carry);

initial 

begin 

a=0; b=0; #10

a=0; b=1; #10

a=1; b=0; #10

a=1; b=1; 

end 
endmodule 
