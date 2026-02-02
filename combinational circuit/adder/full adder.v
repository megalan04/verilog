module full_adder(input a,b,cin,
              output reg sum,carry);
  always @(a or b or cin)begin
    sum <=a^b^cin;
    carry<=(a&b)|(b&cin)|(a&cin);
  end  
endmodule
