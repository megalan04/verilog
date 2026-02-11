module tb;
    reg t,clk,rst;
    wire q;
  t_ff DUT (t,clk,rst,q);
  initial begin
     clk=1;
    forever #5 clk=~clk;
  end
    initial begin
        clk=0;rst=0;t=1;
        #20 rst=1; 
        #20 t=0;
        #20 t=1;
        #20 rst=0;t=0;
        #20 rst=1; 
        #20t=1;
        #50 $finish;
    end
  initial begin
    $monitor("time=%0t   clk=%b rst=%b t=%b q= %b",$time,clk,rst,t,q);
    $dumpfile("t_ff.vcd");
    $dumpvars;
  end
endmodule
