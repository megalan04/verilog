module d_latch(
  input d,clk,rst,
  output reg q
);
  always@(*)begin
    if(rst)
      q<=0;
    else if(clk)
      q<=d;
    else
      q<=q;
  end
endmodule

      
  module mas_sla(
  input d,clk,rst,
  output reg qs
);
  wire qm;
    d_latch master(
      .d(d),
      .clk(clk),
      .rst(rst),
      .q(qm)
    );
    d_latch slave(
      .d(qm),
      .clk(~clk),
      .rst(rst),
      .q(qs)
    );
  endmodule
    
  
