module dlatch(input en,d, output reg q);

always@(en or d)begin

if(en)
q<=d;
else 
q<=q;
end 
endmodule


module dlatch_tb;

reg en,d;
wire q;

dlatch dl(en,d,q);

initial 
begin 

en=0; d=0; #20

en=0; d=1; #20
en=1; d=0; #20

en=1; d=1;

end
endmodule
