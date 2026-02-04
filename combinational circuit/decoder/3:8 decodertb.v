module test;
  reg[2:0]d;
  reg E;
  wire[7:0]y;
  decoder_3_8 DUT(.*);
  initial begin
  E=0;
  #2 d=3'b111;
  #2 E=1;
  #2 d=3'b000;
  #2 d=3'b001;
  #2 d=3'b010;
  #2 d=3'b011;
  #2 d=3'b100;
  #2 d=3'b101;
  #2 d=3'b110;
  #2 d=3'b111;
  #40 $finish;
  end  
  always@(d or E)
    $display("time=%0t INPUT VALUES: d=%b  E=%b OUTPUT VALUES: y=%b",$time,d,E,y);
endmodule
