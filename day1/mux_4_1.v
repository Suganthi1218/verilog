module mux_4_1(input sel1,sel0, i0,i1,i2,i3, output y);
  
  assign y = sel1 ? (sel0 ? i3 :i2) : (sel0 ? i1 : i0);
  
endmodule

module mux_4_1_tb;
  
  reg sel1,sel0,i0,i1,i2,i3;
  wire y;
  
  mux_4_1 m(sel1,sel0,i0,i1,i2,i3,y);
  
  initial
    begin 
      
      $monitor("sel1=%0b, sel0=%0b, i0=%0b, i1=%0b,  i2=%0b, i3=%0b, y=%0b", sel1, sel0, i0, i1, i2, i3,  y);
      
      i0=0; i1=1; i2=0; i3=1;
      
         sel1=0; sel0=0;
      
      #2 sel1=0; sel0=1;
      
      #2 sel1=1; sel0=0;
      
      #2 sel1=1; sel0=1;
      #10;
      $finish;
     
    end
  initial
    begin 
      $dumpfile("mux_4_1.vcd");
      $dumpvars;
    end
endmodule



