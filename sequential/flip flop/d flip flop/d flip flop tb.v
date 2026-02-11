module tb;
reg d;
reg clk;
reg rst;
  d_flip_flop DUT(d,clk,rst,q);
  always #10 clk=~clk;
  initial begin
    clk=0;
    rst=1;
    d=1;
    #10 rst=0;
    clk=1;
    d=1;
    #10 d=0;
    #10 d=1;
    #50 $finish;
  end
  initial begin
    $monitor("time=%0t,INPUT VALUES:clk=%b,rst=%b,d=%b, OUTPUT VALUES:q=%b",$time,clk,rst,d,q);
    $dumpfile("d_flip_flop.vcd");
    $dumpvars;
  end
endmodule
