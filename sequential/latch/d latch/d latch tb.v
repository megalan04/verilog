module d_latch_tb;
  reg d, clk;
  wire q;
  d_latch dut (d,clk,q);
  initial begin
    clk=0; d=0;
    #10 d=1;
    #10 d=0;
    #10 clk=1;
    #10 d=1;
    #10 clk=1;
    #10 d=0;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t clk=%b d=%b q=%b",$time,clk,d,q);
    $dumpfile("d_latch.vcd");
    $dumpvars;
  end
endmodule
