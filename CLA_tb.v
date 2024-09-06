module tb;
  reg [3:0]A, B; 
  reg Cin;
  wire [3:0] S;
  wire Cout;
  wire[4:0] add;
  
  CLA cla(A, B, Cin, S, Cout);
  
  assign add = {Cout, S};
  initial begin
    $monitor( "time %0t: A = %b, B = %b, Cin = %b --> S = %b, Cout = %b, Addition = %0d",$time, A, B, Cin, S, Cout, add);
  end
  initial begin
    A = 1; B = 0; Cin = 0;
    A = 2; B = 3; Cin = 1;
    A = 4; B = 4; Cin= 0; 
    A = 6; B = 3; Cin = 1;
  end
endmodule
