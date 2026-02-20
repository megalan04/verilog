module dual_ram_asyn(input [7:0]din1,din2,
                    input [9:0]addr1,addr2,
                    input w_en1,w_en2,clk,output reg[7:0]dout1,dout2);
  reg[7:0]mem[1023:0];
  reg[9:0]addr_reg1,addr_reg2;
  always@(posedge clk)begin
    if(w_en1)
      mem[addr1]<=din1;
    else
      addr_reg1<=addr1;
  end
  always@(posedge clk)begin
    if(w_en2)
      mem[addr2]<=din2;
    else
      addr_reg2<=addr2;
  end
  assign dout1=mem[addr_reg1];
  assign dout2=mem[addr_reg2];
endmodule
