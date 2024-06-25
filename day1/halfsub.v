module halfsub(a,b,Di,Br);

input a,b;
output Di,Br;

assign Di=a^b;
assign Br=~a&b;

endmodule

module halfsub_tb;

reg a,b;
wire Di,Br;

halfsub hs(a,b,Di,Br);

initial 
begin

a=0; b=0; #7

a=0; b=1; #7

a=1; b=0; #7

a=1; b=1;

end 

endmodule


