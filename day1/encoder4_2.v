
module encoder4_2(input [3:0] a, output reg [1:0] y);
  
  always@(a or y)begin 
    case(a)
       4'b0001 : y=2'b00;
       4'b0010 : y=2'b01;
       4'b0100 : y=2'b10;
       4'b1000 : y=2'b11;
    endcase
  end
endmodule


module encoder4_2_tb;
  
  reg [3:0] a;
  wire [1:0] y;
  
  encoder4_2 en(a,y);
  
  initial 
    begin
      $monitor("a=%b, y=%b", a,y);
      a=4'b0001; #10;
      a=4'b0010; #10;
      a=4'b0100; #10;
      a=4'b1000; #10;
    end
  initial
    begin
      $dumpfile("encoder.vcd");
      $dumpvars;
    end
endmodule
