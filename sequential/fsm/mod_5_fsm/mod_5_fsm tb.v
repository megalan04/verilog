module tb;
    reg clk;
    reg rst;
    wire [2:0] q;
  mod_5_fsm DUT(.*);
  initial begin
    clk=0;
    forever #5clk=~clk;
  end
    initial begin
        clk=1;
        rst=1;
        #10rst=0;
        #50$finish;
    end
    initial begin
      $monitor("time=%0t INPUT VALUES:clk=%b, rst=%b, OUTPUT VALUES:q=%b", $time,clk,rst,q);
      $dumpfile("mod_5_fsm.vcd");
      $dumpvars;
    end

endmodule
