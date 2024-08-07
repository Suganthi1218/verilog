module seven_segment_to_bcd (
    input [6:0] seg_in,
    output reg [3:0] bcd_out
);

always @(*) begin
    case (seg_in)
        7'b0000001: bcd_out = 4'b0000; // 0
        7'b1001111: bcd_out = 4'b0001; // 1
        7'b0010010: bcd_out = 4'b0010; // 2
        7'b0000110: bcd_out = 4'b0011; // 3
        7'b1001100: bcd_out = 4'b0100; // 4
        7'b0100100: bcd_out = 4'b0101; // 5
        7'b0100000: bcd_out = 4'b0110; // 6
        7'b0001111: bcd_out = 4'b0111; // 7
        7'b0000000: bcd_out = 4'b1000; // 8
        7'b0000100: bcd_out = 4'b1001; // 9
        default: bcd_out = 4'b1111; 
    endcase
end

endmodule
