module tb;
  reg j,k,clk,rst;
  wire q;
  jk_flip_flop DUT(j,k,clk,rst,q);
  initial 
     clk=0;
  always #5 clk=~clk;
  initial begin
   
    rst=1;j=1;k=1;
    #20 rst=0;j=0;k=0;
    #20 j=0;k=1;
    #20 j=1;k=0;
    #20 j=1;k=1;
     #20 j=1;k=0;
     
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t INPUT VALUES:clk=%b rst=%b j=%b k=%b,OUTPUT VALUES:q=%b",$time,clk,rst,j,k,q);
    $dumpfile("jk_flip_flop.vcd");
    $dumpvars;
  end
endmodule
