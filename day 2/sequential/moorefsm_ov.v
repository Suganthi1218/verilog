module moorefsm_ov(

input clk,rst,x,

output reg y,
  output reg [1:0] cs,nst);

parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;

  //reg [1:0] cs,nst;101

always@(posedge clk, posedge rst)
begin
  if(rst)begin
    y<=1'b0;
   cs<=s0;
  end   
else 
cs<=nst;
end  
  always@(*)begin
case(cs)

s0:  begin
 if(x==1)
  nst<=s1;
else
nst<=s0;
end

s1: begin
 if(x==1)
  nst<=s1;
else
nst<=s2;
end

s2: begin
 if(x==1)
  nst<=s3;
else
nst<=s0;
end

s3: begin
  y<=1;
 if(x==1)
  nst<=s1;
else
  y<=0;
nst<=s2;

end
endcase
end
endmodule


module moorefsm_ov_tb;

reg clk,rst,x;
wire y;
  wire [1:0] cs, nst;

  moorefsm_ov fs(clk,rst,x,y,cs,nst);

initial
begin 
  $monitor("clk=%b, rst=%b, x=%b,y=%b, cs=%b, nst=%b", clk,rst,x,y,cs,nst);
rst=1; clk=0; x=0; #10;
rst=0; 
 x=1; #10;
 x=0; #10;
  x=1; #10;
 x=0; #10;
//rst=1;
 x=0; #10;
 // rst=0;
 x=1; #10;
 x=0; #10;
 x=1; #10;
 //x=0; #10;

 #20 $finish;
end
always #5 clk=~clk;
  initial
    begin
      $dumpfile("moorefsm_ov.vcd");
      $dumpvars;
    end
endmodule
