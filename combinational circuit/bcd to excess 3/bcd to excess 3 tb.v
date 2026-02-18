module tb();
  reg [3:0]bin;
    wire [3:0]y;
    integer i; 
    bcd_to_excess3 DUT(.*);
    initial begin
        for(i=0;i<10;i++) begin
            bin=i;
            #10; 
        end
      #10$finish;
    end
    initial begin
      $monitor("time=%0t,INPUT VALUES: bin=%b  OUTPUT VALUES: y=%b",$time,bin,y);
        $dumpfile("bcd_to_excess3.vcd");
        $dumpvars;
    end
endmodule

