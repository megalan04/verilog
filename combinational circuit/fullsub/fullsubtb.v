module full_sub_tb();
  reg a,b,bin;
  wire diff,borrow;
  full_sub dut(.a(a),.b(b),.bin(bin),.diff(diff),.borrow(borrow));
  initial begin
    a=0;b=0;bin=0;
    #2 a=0;b=0;bin=1;
    #2 a=0;b=1;bin=0;
    #2 a=0;b=1;bin=1;
    #2 a=1;b=0;bin=0;
    #2 a=1;b=0;bin=1;
    #2 a=1;b=1;bin=0;
    #2 a=1;b=1;bin=1;
    #50$finish;
  end
  initial begin
    $monitor("time=%0t, a=%b b=%b,binn=%b diff=%b borrow=%b",$time,a,b,bin,diff,borrow);
  end
  initial begin
    $dumpfile("full_sub.vcd");
    $dumpvars;
    #50 $finish;
  end  
endmodule
