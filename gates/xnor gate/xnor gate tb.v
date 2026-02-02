module xnor_gate_tb ();
  reg a,b;
  wire y;
  xnor_gate dut(.a(a),.b(b),.y(y));
  initial begin
    a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
    #2 $finish;
  end
  initial begin
    $monitor(" time=%0t  ||A=%b B=%b  ||Y=%b",$time,a,b,y);
  end
endmodule
