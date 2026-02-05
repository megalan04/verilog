module test;
  reg[3:0]a,b;
  wire a_great_b,a_less_b,a_equal_b;
  comparator DUT(.*);
  initial begin
    #2 a=4;b=4;
    #2 a=4;b=7;
    #2 a=4;b=3;
    #10 $finish;
  end
  always@(a or b)
    $display("time=%0t, INPUT VALUES:a=%d, b=%d OUTPUT VALUES:a_great_b=%b,a_less_b=%b,a_equal_b=%b",$time,a,b,a_great_b,a_less_b,a_equal_b);
endmodule
