
module binary_gray(input [3:0]binary, output [3:0] gray);

assign gray[3]=binary[3];
assign gray[2]=binary[3]^binary[2];
assign gray[1]=binary[2]^binary[1];
assign gray[0]=binary[1]^binary[0];
endmodule


module binary_gray_tb;


reg[3:0]  binary;
wire [3:0] gray;

binary_gray uut(binary,gray);

initial 
begin 

binary=4'b0011; #10
binary=4'b0001; #10
binary=4'b0111; #10
binary=4'b1011; #10
binary=4'b1010; 

end 
endmodule
