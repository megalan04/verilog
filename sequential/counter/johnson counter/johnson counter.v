module tb;
  reg clk;
  reg rst;
  wire[3:0]q;
  johnson_counter DUT(.*);
  always #2 clk=~clk;
  initial begin
    #5 rst=0;
    #5 clk=0;
    #5 rst=1;
    #5 rst=0;
    #30 $finish;
  end
    initial begin
      $monitor("time=%0t, INPUT VALUES:clk=%b, rst=%b, OUTPUT VALUES:q=%b",$time,clk,rst,q);
      $dumpfile("johnson_counter.vcd");
      $dumpvars;
    end
endmodule
    
