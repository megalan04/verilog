module bidirection_shiftregister(input d0,d1,clk,rst,
                                  input[1:0] sel,
                                  output reg [3:0]q);
  always @(posedge clk) begin
    if(rst)
      q<=4'b0000;
    else begin
      if(sel==2'b10)
        q<={d0,q[3:1]};
      else if(sel==2'b01)
        q<={q[2:0],d1};
      else
        q<=q;
    end
  end
endmodule
