module tb;
  reg clk,rst,d;
  wire dout;
  mealy DUT(.*);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    clk=1;
    rst=1;
    d=1;
    
    #10 clk=1;rst=0;d=1;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    #20 $finish;
  end
  initial begin
    $monitor("time=%0t, INPUT VALUES: clk=%b, rst=%b, d=%b, OUTPUT VALUES: dout=%b",$time,clk,rst,d,dout);
  $dumpfile("mealy.vcd");
  $dumpvars;
  end
endmodule
