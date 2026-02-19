module  mas_sla_tb;
 reg d,clk,rst;
  wire qs;
  wire qm;
  mas_sla dut(.*);
  initial begin
    clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    rst=1;
    #10 rst=0;
    #10 d=1;
    #20 d=0;
    #20 d=1;
    #20 d=0;
    #200 $finish;
  end
  initial begin
    $monitor("time=%0t, rst=%b,clk=%b,d=%b, qm=%b qs=%b",$time,rst,clk,d,qm,qs);
    $dumpfile("mas_sla.vcd");
    $dumpvars;
  end
endmodule
    
    
