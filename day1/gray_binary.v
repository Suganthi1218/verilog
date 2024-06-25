module gray_binary(input [3:0] gray, output [3:0] binary);

assign binary[3]=gray[3];
assign binary[2]=binary[3]^gray[2];
assign binary[1]=binary[2]^gray[1];
assign binary[0]=binary[1]^gray[0];

endmodule

module gray_binary_tb;

reg [3:0] gray;
wire [3:0] binary;

gray_binary gb(gray,binary);

initial 
begin 

gray=4'b0011; #10
gray=4'b0111; #10
gray=4'b1011; #10
gray=4'b1111; 
end
endmodule
