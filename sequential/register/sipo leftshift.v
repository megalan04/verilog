module sipo_d_ff(input d_sin,clk,rst,
                 output reg [3:0] q); 

  always @(posedge clk) begin
     if (rst) begin
      q <= 4'b0000;
    end
    else
      q<={q[2:0],d_sin};
   end
endmodule
