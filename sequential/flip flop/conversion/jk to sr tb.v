module tb;
   reg clk,rst,s,r;
   wire q;
   jk_2_sr DUT(.*);
   initial begin
     clk=1;
     forever #5 clk=~clk;
   end
   initial begin
     clk=1;rst=1;
     #10 clk=1;rst=0;
     #10 s=0;r=0;
     #10 s=0;r=1;
     #10 s=1;r=0;
     #10 s=1;r=1;
     #90$finish;
   end
   initial begin
     $monitor("time=%0t, INPUT VALUES:clk=%b,rst=%b,s=%b,r=%b OUTPUT VALUES:q=%b",$time,clk,rst,s,r,q);
     $dumpfile("jk_2_sr.vcd");
     $dumpvars;
   end
 endmodule
     
