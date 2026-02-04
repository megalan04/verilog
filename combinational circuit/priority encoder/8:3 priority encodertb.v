module test;
  reg[7:0]d;
  wire[3:0]y;
  priority_encoder DUT(.*);
  initial begin
  d=0;  
  #2 8'b0000_0001;
  #2 8'b0000_001x;
  #2 8'b0000_01xx;
  #2 8'b0000_1xxx;
  #2 8'b0001_xxxx;
  #2 8'b001x_xxxx;
  #2 8'b01xx_xxxx;
  #2 8'b1xxx_xxxx;
     
  #60 $finish;
  end  
  always@(d)
    $display("time=%0t INPUT VALUES: d=%b OUTPUT VALUES: y=%b",$time,d,y);
endmodule
