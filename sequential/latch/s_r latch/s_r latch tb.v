module sr_latch_tb();
  reg s, r, clk;
  wire q;
  sr_latch dut (s,r,clk,q);
  initial begin
    clk=1; s=0; r=0;
    #10 s=0; r=1;  
    #10 s=1; r=0;     
    #10 s=1; r=1;   
    #20 clk=0; s=0; r=0;
    #10 s=0; r=1;   
    #10 s=1; r=0;   
    #10 s=1; r=1; 
    #15 clk=1;
    #90 $finish;
  end
  initial begin
    $monitor("time=%0t clk=%b s=%b r=%b q=%b", $time, clk, s, r, q);
    $dumpfile("sr_latch.vcd");
    $dumpvars;
  end
endmodule
