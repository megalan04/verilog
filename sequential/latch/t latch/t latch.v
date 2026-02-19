module t_latch(
  input t,en,
  output reg q);
  always@(*)begin
    if(en)begin
      if(t)
        q=~q;
      else
        q=q;
    end
  end
endmodule
