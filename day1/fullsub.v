module fullsub(a,b,c,Di,Br);

input a,b,c;

output Di,Br;

assign Di=a^b^c;

assign Br=(~a&b)|(~(a^b)&c);
endmodule

module fullsub_tb;

reg a,b,c;
wire Di,Br;

fullsub fs(a,b,c,Di,Br);

initial 
begin

a=0; b=0; c=0; #5
a=0; b=0; c=1; #5
a=0; b=1; c=0; #5
a=0; b=1; c=1; #5
a=1; b=0; c=0; #5
a=1; b=0; c=1; #5
a=1; b=1; c=0; #5
a=1; b=1; c=1; 

end 
endmodule
