module sum(input [3:0]x,y,
  output [4:0]c); 
  function [4:0]add;
    input [3:0]a,b;
    begin
      add=a+b;
    end
    endfunction
  assign c=add(x,y);
endmodule

//testbench
module tb;
  reg [3:0]x,y;
  wire [4:0]c;
  sum dut(.x(x),.y(y),.c(c));
  initial 
    begin
    x=2;y=5;#5;
    x=7;y=9;#5;
    x=0;y=5;#5;
    x=10;y=10;#5;
      $finish;
      
    end
  initial 
    $monitor("c:%0d",c);
endmodule
