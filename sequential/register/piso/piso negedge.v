module d_ff(input clk,rst,d,
                   output reg  q);
  always@(posedge clk)begin
    if(rst)
      q<=1'b0;
    else
      q<=d;
  end
endmodule
module piso_dff(input [3:0]pin,input clk,rst,load,output sout);
  reg [3:0]q;
  
  d_ff q0(clk,rst,load?pin[0]:1'b0,q[0]);
  d_ff q1(clk,rst,load?pin[1]:q[0],q[1]);
  d_ff q2(clk,rst,load?pin[2]:q[1],q[2]);
  d_ff q3(clk,rst,load?pin[3]:q[2],q[3]);
  assign sout=q[3];
endmodule
