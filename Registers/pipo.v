module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule 
module pipo(d, clk, q);
    input [3:0]d;
input clk;
    output [3:0]q;
    dff a(d[3], clk, q[3]);
    dff b(d[2], clk, q[2]);
    dff c(d[1], clk, q[1]);
    dff e(d[0], clk, q[0]);
endmodule
