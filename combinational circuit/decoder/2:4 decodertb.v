module test;
  reg[1:0]d;
  reg E;
  wire[3:0]y;
  decoder DUT(.*);
  initial begin
  E=0;
  #2 d=2'b11;
  #2 E=1;
  #2 d=2'b00;
  #2 d=2'b01;
  #2 d=2'b10;
  #2 d=2'b11;
  #20 $finish;
  end  
  always@(d or E)
    $display("time=%0t INPUT VALUES: d=%b  E=%b OUTPUT VALUES: y=%b",$time,d,E,y);
endmodule
