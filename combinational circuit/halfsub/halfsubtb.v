module half_sub_tb();
  reg a,b;
  wire diff,borrow;
  half_sub dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial begin
    a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
    #10$finish;
  end
  initial begin
    $monitor("time=%0t, a=%b b=%b, diff=%b borrow=%b",$time,a,b,diff,borrow);
  end
  initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars;
    $finish;
  end  
endmodule
