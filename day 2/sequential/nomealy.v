module nomealy(
input clk,rst,a,
output reg out
);

reg [1:0]state,nextstate;
parameter S0=2'b00;
parameter S1=2'b01;
parameter S2=2'b10;
parameter S3=2'b11;


always @(posedge clk or posedge rst) begin
 if (rst==0) state<=S0;
else      state<=nextstate;
end

always @(*)begin
case(state)

S0:begin
 out<=1'b0;
if (a==1) nextstate<=S1;
else   nextstate<=S0;
end

S1:begin
out<=1'b0;
if (a==0) nextstate<=S2;
else    nextstate<=S1;
end

S2:begin
out<=1'b0;
if (a==1) nextstate<=S3;
else   nextstate<=S0;
end

S3:begin
if (a==0) out<=1'b1; 
else    out<=1'b0; 
 
if (a==0)      nextstate<=S0;
else           nextstate<=S1;
        
end

default:begin 
 out<=1'b0;
nextstate<=S0;
end

endcase
end
//assign out=(state==S3)&&(a==0)?1:0;
endmodule
