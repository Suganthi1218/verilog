module demux_1_2(sel,i,y0,y1);
  
  input sel,i;
  output y0,y1;
  
  assign {y0,y1} = sel ? {1'b0,i} : {i,1'b0};
endmodule

module demux_1_2_tb;
  
  reg sel,i;
  wire y0,y1;
  
  demux_1_2 mx(sel,i,y0,y1);
  initial
    begin
      
      $monitor("sel=%b,i=%b, y0=%b, y1=%b ", sel,i,y0,y1);
      sel=0; i=0;
      #5 sel=0; i=1;
      #5 sel=1; i=0;
      #5 sel=1; i=1;
     
      end
endmodule 
