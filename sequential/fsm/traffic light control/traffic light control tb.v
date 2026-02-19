module tb();
  reg clk,rst;
  wire [2:0]ns,ew,p_ns,p_ew;
  traffic_light DUT(.*);
  initial begin
  forever #2 clk=~clk;
  end
  initial begin
    clk=1;rst=1;
    #2 rst=0;
    #500$finish;
  end
  initial begin
  $monitor("time=%0t, INPUT VALUES: clk=%b rst=%b OUTPUT VALUES:ns=%b, ew=%b, p_ns=%b, p_ew=%b",$time,clk,rst,ns,ew,p_ns,p_ew);
  $dumpfile("traffic_light.vcd");
  $dumpvars;
  end
endmodule         
