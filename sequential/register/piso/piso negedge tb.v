module piso_dff_tb();
  reg[3:0]pin;
  reg clk,rst,load;
  wire sout; 
  piso_dff dut (.*);
   initial begin
     clk=1;
    forever #5 clk=~clk;
  end
    initial begin
        rst=1;load=1;pin=4'b0001;
        #40 rst=0;
        #40 load=0;
        #40 load=1;pin=4'b1100;
        #40 load=0;
        #40 pin=4'b1110;
        #40 load=1;
        #40 load=0;pin=4'b0111;
        #40 $finish;
    end
  initial begin
    $monitor("time=%0t, clk=%b  rst=%b load=%b   pin=%b  sout=%b",$time,clk,rst,load,pin,sout);
    $dumpfile("piso_dff.vcd");
    $dumpvars;
  end
endmodule
