module test;
  reg[7:0]d;
  wire[2:0]y;
  octal_to_binary_encoder DUT(.*);
  initial begin
  #2 d=0; 
  #2 d=8'b0000_0001;
  #2 d=8'b0000_0010;
  #2 d=8'b0000_0100; 
  #2 d=8'b0000_1000;
  #2 d=8'b0001_0000;
  #2 d=8'b0010_0000;
  #2 d=8'b0100_0000;
  #2 d=8'b1000_0000;
  #60 $finish;
  end  
  always@(*)
    $display("time=%0t INPUT VALUES: d=%b OUTPUT VALUES: y=%b",$time,d,y);
endmodule
