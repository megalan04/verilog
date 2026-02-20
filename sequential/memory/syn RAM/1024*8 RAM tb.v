module tb;
  reg[7:0]din;
  reg[9:0]addr;
  reg w_en;
  reg clk;
  wire [7:0]dout;
  ram_syn DUT(.*);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    clk=1;
    din=8'd210;
    addr=10'd1010;
    w_en=1;
    #10
    din=8'd110;
    addr=10'd1000;
    w_en=1;
     #10
    din=8'd158;
    addr=10'd788;
    w_en=1;
     #10
    din=8'd256;
    addr=10'd999;
    w_en=1;
     #10
    din=8'd144;
    addr=10'd888;
    w_en=1;
     #10
    din=8'd220;
    addr=10'd444;
    w_en=1;
     #10
    din=8'd122;
    addr=10'd977;
    w_en=1;
     #10
    din=8'd10;
    addr=10'd555;
    w_en=1;
     #10
    din=8'd9;
    addr=10'd666;
    w_en=1;
     #10
    din=8'd108;
    addr=10'd899;
    w_en=1;
     #10
    din=8'd119;
    addr=10'd1023;
    w_en=1;
    #10
     din=8'd210;
    addr=10'd1010;
    w_en=0;
    #10
    din=8'd110;
    addr=10'd1000;
    w_en=0;
     #10
    din=8'd158;
    addr=10'd788;
    w_en=0;
     #10
    din=8'd256;
    addr=10'd999;
    w_en=0;
     #10
    din=8'd144;
    addr=10'd888;
    w_en=0;
     #10
    din=8'd220;
    addr=10'd444;
    w_en=0;
     #10
    din=8'd122;
    addr=10'd977;
    w_en=0;
     #10
    din=8'd10;
    addr=10'd555;
    w_en=0;
     #10
    din=8'd9;
    addr=10'd666;
    w_en=0;
     #10
    din=8'd108;
    addr=10'd899;
    w_en=0;
     #10
    din=8'd119;
    addr=10'd1023;
    w_en=0;
    #500 $finish;
  end
  initial begin
    $monitor("time=%0t, INPUT VALUES: din=%b addr=%b  w_en=%b  clk=%b, OUTPUT VALUES: dout=%b",$time,din,addr,w_en,clk,dout);
    $dumpfile("ram_syn.vcd");
    $dumpvars;
  end
endmodule
    
    

    
    
