module comparator(input[3:0]a,b,
                  output reg a_great_b,a_less_b,a_equal_b);
  always@(a or b)begin
    a_great_b=0;
    a_less_b=0;
    a_equal_b=0;
    if(a>b)begin
       a_great_b=1;
    end else if(a<b)begin
       a_less_b=1;
    end else begin
      a_equal_b=1;
    end
  end
endmodule
