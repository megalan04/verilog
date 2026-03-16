module tb();
  reg[7:0]data_in;
  reg r_en,w_en,clk,rst;
  wire[7:0]data_out;
  syn_fifo dut(.*);
 initial begin
  clk=0;
   forever #5 clk=~clk;
 end
initial begin
  rst=1;
  r_en=0;
  w_en=0;
  data_in=8'd15;
  #10 rst=0;
  data_in=8'd4;
  w_en=1;
  r_en=0;
  #10
  data_in=8'd8;
  w_en=1;
  r_en=0;
  #10
  w_en=1;
  data_in=8'd15;
  r_en=1;
  #10
  w_en=1;
  data_in=8'd44;
  r_en=0;
  #10
  w_en=0;
  data_in=8'd30;
  r_en=1;
  #10
   data_in=8'd9;
   r_en=1;
   w_en=0;
  #10
   data_in=8'd14;
   r_en=1;
   w_en=0;
  #10
   data_in=8'd18;
   r_en=0;
   w_en=1;
  #10
   data_in=8'd0;
   r_en=0;
   w_en=1;
  #150 $finish;
 end
  initial begin    
    $monitor("time=%0t,INPUT VALUES: clk=%b,rst=%b,data_in=%b,wt_en=%b,rd_en=%b OUPUT VALUES:data_out=%d",$time,clk,rst,data_in,w_en,r_en,data_out);
    $dumpfile("syn_fifo.vcd");
    $dumpvars;
  end

