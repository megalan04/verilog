module jk_mas_sla_tb;
 reg j,k,clk,rst;
  wire qs;
  wire qm;
  jk_master_slave dut(.*);
  initial begin
    clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    rst=1;
    #10 rst=0;
    #10 j=0;k=0;
    #20 j=0;k=1;
    #20 j=1;k=0;
    #20 j=1;k=1;
    #200 $finish;
  end
  initial begin
    $monitor("time=%0t, rst=%b,clk=%b,j=%b,k=%b, qm=%b qs=%b",$time,rst,clk,j,k,qm,qs);
    $dumpfile("jk_master_slave.vcd");
    $dumpvars;
  end
endmodule
    
    
