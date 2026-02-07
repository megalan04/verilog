module test();
 reg y,s;
  wire [1:0]i;
  demux1to2 dut(.*);
  initial begin 
    y=1;s=0;
    #10 s=1;
    #10 y=0; s=0;
    #10 s=1;
    #40 $finish;
  end
  always@(y or s)
    $display("time=%0t, INPUT VALUES: y=%b   s=%b   OUTPUT VALUES; i[O]=%b i[1]=%b ",$time,y,s,i[0],i[1]);
    
endmodule
