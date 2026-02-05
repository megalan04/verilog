module test;
  reg [3:0]b;
  wire[3:0]y;
  binary_to_gray DUT(.*);
  initial begin
    b=4'b0000;
    #1 b=4'b0010;
    #1 b=4'b1010;
    #1 b=4'b1001;
    #1 b=4'b0101;
    #20 $finish;
  end
  always@(b)begin
    $display("time=%0t,INPUT VALUES: b=%b,OUTPUT VALUES:y=%b",$time,b,y);
  end
endmodule
