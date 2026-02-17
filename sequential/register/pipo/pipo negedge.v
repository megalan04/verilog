module pipo_negedge(input [3:0]d,clk,rst,
                   output reg [3:0] q);
  always@(negedge clk)begin
    if(rst)
      q<=4'b0000;
    else
      q<=d;
  end
endmodule
