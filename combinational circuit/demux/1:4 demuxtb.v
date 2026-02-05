module test;
  reg I;
  reg[1:0]s;
  wire[3:0]y;
  demux_1_4 DUT(.*);
  initial begin
    #2 I=0; s=2'b00;
    #2 I=1; s=2'b00;
    #2 I=1; s=2'b01;
    #2 I=1; s=2'b10;
    #2 I=1; s=2'b11;
    #20 $finish;
  end
  always@(I or s)
    $display("time=%0t,INPUT VALUES: I=%b, s=%b, OUTPUT VALUES: y=%b",$time,I,s,y);
endmodule
