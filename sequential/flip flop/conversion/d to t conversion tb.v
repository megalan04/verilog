module tb;
 reg clk;
 reg rst;
 reg t;
 wire q;
  d_2_t DUT(.*);
initial begin
  clk=1;
  forever #5 clk = ~clk;
end
  initial begin
    clk=0;
    rst=1;
    t=0;
    #10 rst=0;
    #10 t=1;
    #10 t=1;
    #10 t=0;
    #10 t=1;
    #10 t=1;
    #10 t=0;
    #10 t=1;
    #150 $finish;
end
initial begin
  $monitor("time=%0t,INPUT VALUES: clk=%b rst=%b  t=%b,OUTPUT VALUES:  q=%b",$time,clk,rst,t,q);
end
endmodule

    
