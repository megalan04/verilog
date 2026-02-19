module sr_mas_sla_tb;
 reg s,r,clk,rst;
  wire qs;
  wire qm;
  sr_master_slave dut(.*);
  initial begin
    clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    rst=1;
    #10 rst=0;
    #10 s=0;r=0;
    #20 s=0;r=1;
    #20 s=1;r=0;
    #20 s=1;r=1;
    #200 $finish;
  end
  initial begin
    $monitor("time=%0t, rst=%b,clk=%b,s=%b,r=%b, qm=%b qs=%b",$time,rst,clk,s,r,qm,qs);
    $dumpfile("sr_master_slave.vcd");
    $dumpvars;
  end
endmodule
    
    
