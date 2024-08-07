module shift_register_tb;
  reg [4:0] a;
  reg [1:0] s;
  wire [4:0] q;
  
  shift_register sr(.a(a),.s(s),.q(q));
  
  initial begin
    a=5'b01101;
    s=2'b01;
    #2
    a=5'b01111;
    s=2'b10;
    #2
    a=5'b11101;
    s=2'b11;
    #2
    $finish;
  end
  
  always @* begin
    #1
    $display("a=%b,s=%b,q=%b",a,s,q);
  end
endmodule
