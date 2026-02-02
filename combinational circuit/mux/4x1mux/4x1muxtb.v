module mux_test;
  reg a,b,c,d,sel_0,sel_1;
  wire out;
  mux_4_1 DUT(.i0(a),.i1(b),.i2(c),.i3(d),.s1(sel_1),.s0(sel_0),.out(out));
  initial begin
    a=1; b=0; c=1; d=0;
    sel_1=0; sel_0=0;
    #10  sel_1=0; sel_0=1;
    #10  sel_1=1; sel_0=0;
    #10  sel_1=1; sel_0=1;
    #60$finish;
  end
  always@(sel_0 or sel_1) 
    $display("time=%0t INPUT VALUES:a=%b b=%b c=%b d=%b sel_1=%b sel_0=%b OUTPUT VALUES:out=%b",$time,a,b,c,d,sel_1,sel_0,out);
endmodule
