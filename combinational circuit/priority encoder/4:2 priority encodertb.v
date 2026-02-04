module test;
  reg[3:0]d;
  wire[1:0]y;
  priority_encoder DUT(.*);
  initial begin
  d=0;  
  #2 d=4'0001;
  #2 d=4'b0010;
  #2 d=4'b1010; 
  #2 d=4'b1111;
  #60 $finish;
  end  
  always@(d)
    $display("time=%0t INPUT VALUES: d=%b OUTPUT VALUES: y=%b",$time,d,y);
endmodule
