module tb;
  reg clk;
  reg rst;
  wire[3:0]q;
  mod_n_counter DUT(.*);
  initial begin
    clk=0;
  end
  always #2 clk=~clk;
  initial begin
    #5 rst=1;
    #5 clk=1;rst=0;
    
    
    #60 $finish;
  end
    initial begin
      $monitor("time=%0t, INPUT VALUES:clk=%b, rst=%b, OUTPUT VALUES:q=%b",$time,clk,rst,q);
      $dumpfile("mod_n_counter.vcd");
      $dumpvars;
    end
endmodule
    
