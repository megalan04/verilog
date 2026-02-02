module test;
  reg a,b,cin;
  wire sum,carry;
  full_adder DUT(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  initial begin
    a=0; b=0; cin=0;
    #2 a=0; b=0; cin=1;
    #2 a=0; b=1; cin=0;
    #2 a=0; b=1; cin=1;
    #2 a=1; b=0; cin=0;
    #2 a=1; b=0; cin=1;
    #2 a=1; b=1; cin=0;
    #2 a=1; b=1; cin=1;
    #30$finish;
  end
  always@(a or b or cin)
    $monitor("time=%0t INPUT VALUES:a=%b b=%b cin=%b OUTPUT VALUES:sum=%b carry=%b",$time,a,b,cin,sum,carry);
endmodule
