
module d_flipflop(input d,clk, output reg q, output wire qn);
  
always@(posedge clk)begin
    
    q<=d;
 end 
    assign qn=~q;
endmodule


module d_flipflop_tb;
  
  reg d,clk;
  wire q,qn;
  d_flipflop df(d,clk,q,qn);
initial 
    begin
clk=1'b0;
      forever  #10 clk<=~clk;
       
    end
initial 
   begin 
        $monitor("clk=%b\t, d=%b\t, q=%b\t, qn=%b", clk, d, q,qn);
     
      d=0; #20
      d=1; #10
      d=1; #10
     $stop;
end
  initial
    begin
  $dumpfile("d_flipflop.vcd");
  $dumpvars ;
 end
endmodule
