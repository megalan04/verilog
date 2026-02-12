module siso_d_ff(input d_sin,clk,rst,
                 output reg q_sout); 
  reg [3:0] q;
  always @(posedge clk) begin

    if (rst) begin
      q <= {4{1'b0}};
      q_sout<= 1'b0;
    end
    else
      q<={q[2:0],d_sin};
     q_sout<=q[0];
   end
endmodule
