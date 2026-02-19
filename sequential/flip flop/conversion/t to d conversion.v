module t_ff (input t,clk,rst,
             output reg q);
  always @(posedge clk or posedge rst ) begin
    if (rst)
        q <= 1'b0;
    else begin
      if(t)
        q<=~q;
      else
        q<=q;
    end
  end
endmodule

module t_2_d (input clk,
    input rst,
    input d,
    output reg q);
wire t;
assign t=d^q;
  t_ff d_ff(.t(t),.clk(clk),.rst(rst),.q(q));
endmodule
