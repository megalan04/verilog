module test;
  reg[3:0]d;
  wire[1:0]y;
  encoder DUT(.*)
  initial begin
    d[3]=0; d[2]=0; d[1]=0; d[0]=0;
    #2 d[3]=0; d[2]=0; d[1]=0; d[0]=1;
    #2 d[3]=0; d[2]=0; d[1]=1; d[0]=0;
    #2 d[3]=0; d[2]=1; d[1]=0; d[0]=0;
    #2 d[3]=1; d[2]=0; d[1]=0; d[0]=0;
    #50 $finish;
  end
  always@(d)
    &display("time=%0t: INPUT VALUES:d=%b OUTPUT VALUES:y=%b",time,d,y);
endmodule
