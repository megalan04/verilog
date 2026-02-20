module ram_asyn(input [7:0]din,
               input [9:0]addr,
               input w_en,clk,output reg[7:0]dout);
  reg[7:0]mem[1023:0];
  reg [9:0]addr_reg;
  always@(posedge clk)begin
    if(w_en)
      mem[addr]<=din;
    else
      addr_reg<=addr;
  end
  assign dout=mem[addr_reg];
endmodule
