module tlatch_test;
  reg t,en;
  wire q;
  t_latch dut(.*);
  initial begin
    en=0;t=0;
    #10 en=1;t=0;
    #10 t=1;
    #10 t=0;
    #10 en=1;t=1;
    #70 $finish;
  end
  initial begin 
    $monitor("time=%0t, t=%b en=%b q=%b",$time,t,en,q);
    $dumpfile("latch.vcd");
    $dumpvars;
  end
endmodule
