module t_latch(
  input t,en,
  output reg q=0);
  always@(*)begin
    if(en)begin
      if(t)
        q=~q;
      else
        q=q;
    end
  end
endmodule
module ts_latch(
  input t,en,
  output reg q=0);
  always@(*)begin
    if(!en)begin
      if(t)
        q=~q;
      else
        q=q;
    end
  end
endmodule
module t_master_slave(input t,clk,rst,
                       output reg qm,qs);
  t_latch master(.t(t),.en(clk),.q(qm));
  ts_latch slave(.t(qm),.en(clk),.q(qs));
endmodule
