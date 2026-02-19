module tb;
 reg clk;
 reg rst;
 reg d;
 wire q;
  t_2_d DUT(.*);
initial begin
  clk=1;
  forever #5 clk = ~clk;
end
  initial begin
    clk=0;
    rst=1;
    d=0;
    #10 rst=0;
    #10 d=0;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #10 d=1;
    #10 d=0;
    #90 $finish;
end
initial begin
  $monitor("time=%0t,INPUT VALUES: clk=%b rst=%b  d=%b,OUTPUT VALUES:  q=%b",$time,clk,rst,d,q);
end
endmodule

    
