module d_flip_flop(input clk,d,rst,
                   output reg q);
  always@(posedge clk)begin
    if(rst)
      q<=0;
    else
      q<=d;
  end
endmodule

module d_2_t (input clk,
    input rst,
    input t,
    output reg q);
wire d;
assign d=t^q;
  d_flip_flop tff(.clk(clk),.rst(rst),.d(d),.q(q));
endmodule
