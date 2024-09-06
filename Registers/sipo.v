module sipo_1 (input load, clk, rst,
               input data_in,
               output [7:0] data_out);
  
  reg [7:0] data_reg;
  
  always @ (posedge clk or negedge rst) begin
    if (~rst)
      data_reg <= 8'h00; 
    else if (load)
      data_reg <= {data_in, data_reg[7:1]}; 
  end
 
  assign data_out = data_reg;
  
endmodule
