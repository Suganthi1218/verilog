module nomealy_tb;
reg clk,rst,a; 
wire out;

parameter delay = 1;

nomealy NMLY(clk,rst,a,out);
always #4 clk=~clk;
initial begin
clk=0;rst=0; a=1;
#2 rst=1;

#2 a=1;
#2 a=0;
#2 a=1;
#2 a=0;
#2 a=1;
#2 a=1;
#2 a=0;
#2 a=1;
#2 a=0;
#2 a=1;
#2 a=0;
#2 a=1;

$finish;
end
endmodule
