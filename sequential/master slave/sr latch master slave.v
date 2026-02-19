module sr_latch(input s,r,clk,
                    output reg q);
  always@(*)begin
    if(clk)begin
      if(~s & ~r)
        q=q;
    else if(~s & r)
      q=1'b0;
    else if(s & ~r)
      q=1'b1;
    else
      q=1'bx;
  end
    else
      q=q;
  end
endmodule

module sr_master_slave(input s,r,clk,rst,
                       output reg qm,qs);
  sr_latch master(.s(s),.r(r),.clk(clk),.q(qm));
  sr_latch slave(.s(qm),.r(~qm),.clk(~clk),.q(qs));
endmodule
  
