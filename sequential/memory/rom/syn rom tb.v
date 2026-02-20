module tb;
  reg clk;
  reg en;
  reg [5:0]addr;
  wire [3:0]dout;
  rom_syn dut(.*);
  initial begin
    clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    clk=1;
    en=1;
    #10 addr=6'd63;
    #10 addr=6'd1;
    #10 addr=6'd22;
    #10 addr=6'd33;
    #10 addr=6'd44;
    #10 addr=6'd55;
    #10 addr=6'd12;
    #10 addr=6'd11;
    #10 addr=6'd19;
    #10 addr=6'd20;
    #10 addr=6'd19;
    #10 addr=6'd29;
    #10 addr=6'd28;
    #10 addr=6'd17;
    #10 addr=6'd19;
    #10 addr=6'd35;
    #10 addr=6'd49;
    #10 addr=6'd50;
    #10 addr=6'd55;
    #10 addr=6'd59;
    #10 addr=6'd61;
    #10 en=0;
    #10 addr=6'd19;
    #10 addr=6'd35;
    #10 addr=6'd49;
    #10 addr=6'd50;
    #10 addr=6'd55;
    #10 addr=6'd59;
    #10 addr=6'd61;
    #300 $finish;
  end
  initial begin
    $monitor("time=%0t, INPUT VALUES: clk=%b en=%b addr=%b, OUTPUT VALUES:dout=%b",$time,clk,en,addr,dout);
    $dumpfile("rom_syn.vcd");
    $dumpvars;
  end
endmodule
    
