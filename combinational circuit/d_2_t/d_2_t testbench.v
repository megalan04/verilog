module tb;
    reg clk;
    reg rst;
    reg t;
    wire Q;
    d_to_t DUT (.*);
    initial begin
    forever #5 clk = ~clk;
    end
    initial begin
        clk=0;
        rst=1;
        t=0;
        #10 rst = 0;
        #10 t = 1;   
        #20 t = 0;  
        #20 t = 1;  
        #20 t = 1;   
        #20 t = 0;  

        #40$finish;
    end
    initial begin
      $monitor("time=%0t INPUT VALUES: clk=%b, rst=%b, t=%b  Q=%b",$time,clk,rst,t,Q);
      $dumpfile("d_to_t.vcd");
      $dumpvars;
    end

endmodule
