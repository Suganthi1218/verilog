module fadd( a,b,c,s,cy);
  input[3:0] a,b;
  input c;
  output  [3:0]s,cy;
  assign  s = a^b^c;
  assign cy = (a&b) | (a&c) | (b&c);
  endmodule

module add(a,b,cin,sum,co);
  input [3:0]a,b;
  input cin;
  output co;
  output [3:0]sum;
  wire c1,c2,c3;
  fadd fa0(a[0],b[0],cin,sum[0],c1);
  fadd fa1(a[1],b[1],c1,sum[1],c2);
  fadd fa2(a[2],b[2],c2,sum[2],c3);
  fadd fa3(a[3],b[3],c3,sum[3],co);
  endmodule
    
  
