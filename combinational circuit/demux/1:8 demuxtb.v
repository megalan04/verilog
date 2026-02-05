module test;
  reg I;
  reg[2:0]s;
  wire[7:0]y;
  demux_1_8 DUT(.*);
  initial begin
    #2 I=0; s=3'b000;
    #2 I=1; s=3'b000;
    #2 I=1; s=3'b001;
    #2 I=1; s=3'b010;
    #2 I=1; s=3'b011;
    #2 I=1; s=3'b100;
    #2 I=1; s=3'b101;
    #2 I=1; s=3'b110;
    #2 I=1; s=3'b111;
    #40 $finish;
  end
  always@(I or s)
    $display("time=%0t,INPUT VALUES: I=%b, s=%b, OUTPUT VALUES: y=%b",$time,I,s,y);
endmodule
