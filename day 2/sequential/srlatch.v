module srlatch(input en,s,r, output reg  q, qn);
assign qn= ~q;
always@(*)begin
if(en)
begin
 if(s==0 && r==0)    
   q<=q;

else if(s==1 && r==0)
    q<=1;

else if (s==0 && r==1)
     q<=0;

else 
  q=1'bx;
end

else 
  q<=q;

end
endmodule


module srlatch_tb;

reg en,s,r;
wire q,qn;

srlatch sr(en,s,r,q,qn);

initial 
begin 

en=0; s=0; r=0; #10
en=0; s=0; r=1; #10
en=0; s=1; r=0; #10
en=0; s=1; r=1; 


en=1; s=0; r=0; #10
en=1; s=0; r=1; #10
en=1; s=1; r=0; #10
en=1; s=1; r=1;

end
 endmodule
