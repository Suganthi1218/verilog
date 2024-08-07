module 7seg_bcd_tb.v;

   
    reg [6:0] seg_in;
     Outputs
    wire [3:0] bcd_out;
    
  
    seven_segment_to_bcd uut (
        .seg_in(seg_in),
        .bcd_out(bcd_out)
    );
    
   
    initial begin
        
        $display("Test for digit 0:");
        seg_in = 7'b0000001;
        #10;
        
        $display("Test for digit 1:");
        seg_in = 7'b1001111;
        #10;
        
        $display("Test for digit 2:");
        seg_in = 7'b0010010;
        #10;
        
        $display("Test for digit 3:");
        seg_in = 7'b0000110;
        #10;
        
        $display("Test for digit 4:");
        seg_in = 7'b1001100;
        #10;
        
        $display("Test for digit 5:");
        seg_in = 7'b0100100;
        #10;
        
        $display("Test for digit 6:");
        seg_in = 7'b0100000;
        #10;
        
        $display("Test for digit 7:");
        seg_in = 7'b0001111;
        #10;
        
        $display("Test for digit 8:");
        seg_in = 7'b0000000;
        #10;
        
        $display("Test for digit 9:");
        seg_in = 7'b0000100;
        #10;
        
        $display("Test for unsupported segment pattern:");
        seg_in = 7'b1111111;
        #10;
 
        $finish;
    end
    
endmodule
