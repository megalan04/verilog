module tb;
  reg [3:0]d;
  reg clk;
  reg rst;
  wire [3:0]q;
  pipo_negedge DUT(.*);
  always #10 clk=~clk;
  initial begin
    clk=0;
    rst=1;
    d=4'b1010;
    #10 rst=0;
    #30 d=4'b0010;
    #30 d=4'b0001;
    #50 $finish;
  end
  initial begin
    $monitor("time=%0t,INPUT VALUES:clk=%b,rst=%b,d=%b, OUTPUT VALUES:q=%b",$time,clk,rst,d,q);
    $dumpfile("pipo_negedge.vcd");
    $dumpvars;
  end
endmodule
