module  mas_sla_tb;
 reg t,clk,rst;
  wire qs;
  wire qm;
  t_master_slave dut(.*);
  initial begin
    clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    rst=1;
    #10 rst=0;
    #10 t=1;
    #20 t=0;
    #20 t=1;
    #20 t=0;
    #200 $finish;
  end
  initial begin
    $monitor("time=%0t, rst=%b,clk=%b,t=%b, qm=%b qs=%b",$time,rst,clk,t,qm,qs);
    $dumpfile("mas_sla.vcd");
    $dumpvars;
  end
endmodule
