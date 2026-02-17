module tb();
  reg clk,rst,d;
  wire dout;
  
  moore DUT(.*);
  initial begin
    clk=1;
  forever #5 clk=~clk;
  end
  initial begin
    rst=1; d=0;
    
    #5 rst=0; 
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    @(negedge clk) d=0;
    @(negedge clk) d=0;
    @(negedge clk) d=1;
    #20 $finish;
  end
  initial begin
    $monitor("time=%0t, INPUT VALUES:clk=%b, rst=%b, d=%b,  OUTPUT VALUES: dout=%b",$time,clk,rst,d,dout);
    $dumpfile("moore.vcd");
    $dumpvars;
  end
endmodule
