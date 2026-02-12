module tb_bidirection_shiftregister;
  reg d0, d1, clk, rst;
  reg [1:0] sel;
  wire [3:0] q;
  bidirection_shiftregister uut (.*);
  initial begin
    clk=1;
  forever #5 clk = ~clk;
  end
  initial begin
    rst=1;
    #10 sel=2'b10;d0=1;  
    #10 sel=2'b10;d0=0;  
    #10 sel=2'b10;d0=1;  
    #10 sel=2'b01;d1=1; 
    #10 rst=1;
    #10 sel=2'b00;
    #10 sel=2'b01;d1=0;  
    #10 sel=2'b01;d1=1;   
    #10 rst=0;
    #10 sel=2'b00;
    #10 sel=2'b10;d0=1;  
    #10 sel=2'b10;d0=0;  
    #10 sel=2'b10;d0=1;  
    #10 sel=2'b01;d1=1;
    #10 sel=2'b00;
    #90 $finish;
  end
  initial begin
     $dumpfile("bidirection_shiftregister.vcd");
    $monitor("time=%0t, INPUT VALUES: d0=%b d1=%b clk=%b rst=%b sel=%b, OUTPUT VALUES: q=%b",$time,d0,d1,clk,rst,sel,q);
    
    $dumpvars;
  end
endmodule
