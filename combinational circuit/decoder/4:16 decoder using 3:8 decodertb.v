module test;
  reg[3:0]d;
  reg en;
  wire[15:0]y;
  decoder_4_16 DUT(.*);
  initial begin
    en=0;
    #2 d=4'b1111;
    #2 en=1;
    for(int i=0;i<16;i++)begin
      #2 d=i;
    end
    #50 $finish;
  end
  always@(d or en)
    $display("time=%0t INPUT VALUES: d=%b en=%b OUTPUT VALUES: y=%b",$time,d,en,y);
endmodule
