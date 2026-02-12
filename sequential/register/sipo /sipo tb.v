module tb;
  reg d_sin;
  reg clk,rst;
  wire reg [3:0] q;
  sipo_d_ff dut (.*);
  initial begin
     clk=1;
    forever #5 clk=~clk;
  end
    initial begin
        rst=1;d_sin=1;
        #10 rst=0; 
        #10 d_sin=1;
        #10 d_sin=0;
        #10 d_sin=1;
        #10 d_sin=1;
        #10 d_sin=1;
        #10 d_sin=0;
        #10 d_sin=0;
        #10 d_sin=1;
        #10 d_sin=0;
        #10 d_sin=0;
        #10 d_sin=1;
        #10 d_sin=1;
        #100$finish;
    end
  initial begin
    $monitor("time=%0t, clk=%b  rst=%b  d_sin=%b   q=%b",$time,clk,rst,d_sin,);
    $dumpfile("sipo_d_ff.vcd");
    $dumpvars;
  end

endmodule
