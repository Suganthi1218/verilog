module mux_2_1(input s,i0,i1, output y);
  
  assign y= s ? i1 : i0;
  
endmodule

module mux_2_1_tb;
  
  reg s,i0,i1;
  wire y;
  
  mux_2_1 m(s,i0,i1,y);
  
  initial
    begin 
      
      $monitor("s=%0b, i0=%0b, i1=%0b, y=%0b", s, i0, i1, y);
      
      i0=0; i1=1; s=0;
      #2;
      
      s=1;
      #5;
     
    end
  initial
    begin 
      $dumpfile("mux_2_1.vcd");
      $dumpvars;
    end
endmodule
