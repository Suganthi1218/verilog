module add_tb;
  reg [3:0]a,b;
  reg cin;
  wire co;
  wire [3:0]sum;
  add ins(a,b,cin,sum,co);
  initial begin
#0 a=4'b0000; b=4'b0000; cin=1'b0;
#4 a=4'b0101; b=4'b0010; 
#4 a=4'b1110; b=4'b0100; 
#4 a=4'b1000; b=4'b0100; 
#4 a=4'b0101; b=4'b1010; 
     end
  initial begin
    $dumpfile("add.vcd");
    $dumpvars();
    $monitor("a=%0d,b=%0d,cin=%0d,sum=%0d,co=%0d",a,b,cin,sum,co);
    #50 $finish;
  end
endmodule
