module sum(
  input [3:0]x,y,
  output reg [4:0]z
);
  
   task add;
    input [3:0]a,b;
     output [4:0]c;
    begin
      c=a+b;
    end
   endtask
  always@(*)
    begin
      add(x,y,z);
    end
endmodule

//testbench
module tb;
  reg [3:0]x,y;
  wire [4:0]z;
  sum dut(.x(x),.y(y),.z(z));
  initial 
    begin
      x=2;y=5;
      $finish;
      
    end
  initial 
    $monitor("z:%0d",z);
endmodule
