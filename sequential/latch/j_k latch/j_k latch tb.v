module jk_latch_tb();
  reg j, k, clk;
  wire q;
  jk_latch dut (j,k,clk,q);
  initial begin
    clk=1; j=0; k=0;
    #10 j=1; k=0;
    #10 j=0; k=1;
    #10 j=1; k=1;
    #10 clk=0;
    #10 j=1; k=0;
    #50$finish;
  end
  initial begin
     $monitor("T=%0t clk=%b j=%b k=%b q=%b",$time, clk, j, k, q);
    $dumpfile("jk_latch.vcd");
    $dumpvars;
  end
endmodule
