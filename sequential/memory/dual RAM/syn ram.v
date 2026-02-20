module dual_ram_syn(input [7:0]din1,din2,
                    input [9:0]addr1,addr2,
                    input w_en1,w_en2,clk,output reg[7:0]dout1,dout2);
  reg[7:0]mem[1023:0];
  always@(posedge clk)begin
    if(w_en1)
      mem[addr1]<=din1;
    else
      dout1<=mem[addr1];
  end
  always@(posedge clk)begin
    if(w_en2)
      mem[addr2]<=din2;
    else
      dout2<=mem[addr2];
  end
endmodule
