module test;
  reg [3:0]g;
  wire[3:0]b;
  gray_to_binary DUT(.*);
  initial begin
    g=4'b0000;
    #1 g=4'b0010;
    #1 g=4'b1010;
    #1 g=4'b1001;
    #1 g=4'b0101;
    #20 $finish;
  end
  always@(g)begin
    $display("time=%0t,INPUT VALUES: g=%b,OUTPUT VALUES:b=%b",$time,g,b);
  end
endmodule
    
