module mux_2_1(sel,i0,i1,y);
  
  input sel,i0,i1;
  output y;
  
  assign y= sel ? i1:i0;
endmodule

module mux_3_1(input sel0,sel1,i0,i1,i2,i3, output reg  y);
  
  wire y0;
  
  mux_2_1 m1(sel0,y0,i2,y);
  mux_2_1 m2(sel1,i0,i1,y0);
  
endmodule


module mux_3_1_tb;
  
  reg sel0,sel1,i0,i1,i2,i3;
  wire y;
  
  mux_3_1 mx(sel0,sel1,i0,i1,i2,i3,y);
  initial
    begin
      
      $monitor("sel1=%b, sel0=%b, i0=%b, i1=%b, i2=%b,i3=%b, y=%b", sel0, sel1, i0, i1, i2,i3, y);
      {i3,i2,i1,i0}=4'h5;
      repeat(5)begin
        {sel0,sel1}=$random;
        #5;
      end
    end
endmodule 
