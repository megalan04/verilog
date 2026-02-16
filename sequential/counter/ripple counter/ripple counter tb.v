module ripple_cn_tb;
  reg clk;
  reg rst;
  wire[3:0]q;
  ripple_counter DUT(.*);
  initial begin
    clk=0;
  end
  always #2 clk=~clk;
  initial begin
    #5 rst=1;
    #5 clk=1;rst=0;
    
    
    #30 $finish;
  end
    initial begin
      $monitor("time=%0t, INPUT VALUES:clk=%b, rst=%b, OUTPUT VALUES:q=%b",$time,clk,rst,q);
      $dumpfile("ripple_counter.vcd");
      $dumpvars;
    end
endmodule
    

