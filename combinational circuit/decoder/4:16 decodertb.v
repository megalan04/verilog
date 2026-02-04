module test;
  reg[3:0]d;
  reg E;
  wire[15:0]y;
  decoder_4_16 DUT(.*);
  initial begin
    E=0;
    #2 d=4'b1010;
    #2 E=1;
    for(int i=0;i<16;i++)begin
      #2 d=i;
    end
    #50 $finish;
  end
  always@(d or E)
    $display("time=%0t INPUT VALUES: d=%b E=%b OUTPUT VALUES: y=%b",$time,d,E,y);
endmodule  
