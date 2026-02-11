module sr_latch(input s,r,clk,
                    output reg q=0);
  always@(*)begin
    if(clk)
      if(~s & ~r)
        q=q;
    else if(~s & r)
      q=1'b0;
    else if(s & ~r)
      q=1'b1;
    else
      q=1'bx;
  end
endmodule
