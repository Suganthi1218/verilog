
module mux_2_1(input s,i0,i1,output reg y);
  
  assign y= s ? i1 : i0;
  
endmodule 



module mux_4_1(input s1,s0,i0,i1,i2,i3, output reg y);
  
  wire y1,y2;
  
  mux_2_1 m1(s1, i2,i3,y1);
  mux_2_1 m2(s1, i0,i1,y0);
  mux_2_1 m3(s0,y0,y1,y);

endmodule 


module mux_4_1_tb;

reg s1,s0,i0,i1,i2,i3;
wire y;

mux_4_1 m(s1,s0,i0,i1,i2,i3,y);

initial
begin

$monitor("s1=%b, s0=%b, i0=%b, i1=%b, i2=%b, i3=%b, y=%b", s1,s0,i0,i1,i2,i3,y);

i0=1; i1=0; i2=1; i3=0;

s1=0; s0=0;
#10  s1=0; s0=1; 
#10 s1=1; s0=0;
#10 s1=1; s0=1;

#5 $finish;
end
endmodule
